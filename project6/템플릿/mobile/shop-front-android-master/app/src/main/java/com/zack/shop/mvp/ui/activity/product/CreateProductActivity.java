package com.zack.shop.mvp.ui.activity.product;

import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.chad.library.adapter.base.entity.MultiItemEntity;
import com.huantansheng.easyphotos.EasyPhotos;
import com.jess.arms.di.component.AppComponent;
import com.jess.arms.utils.ArmsUtils;
import com.zack.shop.R;
import com.zack.shop.app.base.BaseSupportActivity;
import com.zack.shop.di.component.DaggerCreateProductComponent;
import com.zack.shop.di.module.CreateProductModule;
import com.zack.shop.mvp.contract.CreateProductContract;
import com.zack.shop.mvp.http.entity.moment.ImageChooseBean;
import com.zack.shop.mvp.http.entity.product.Product;
import com.zack.shop.mvp.presenter.CreateProductPresenter;
import com.zack.shop.mvp.ui.adapter.ImageChooseAdapter;
import com.zack.shop.mvp.ui.widget.ImageItemDecoration;
import com.zack.shop.mvp.utils.AppConstant;
import com.zack.shop.mvp.utils.GlideEngine;
import com.zack.shop.mvp.utils.ProgressDialogUtils;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import butterknife.BindView;

public class CreateProductActivity extends BaseSupportActivity<CreateProductPresenter> implements CreateProductContract.View {


    @BindView(R.id.toolbar_back)
    RelativeLayout toolbarBack;
    @BindView(R.id.toolbar_title)
    TextView toolbarTitle;
    @BindView(R.id.toolbar_right)
    TextView toolbarRight;
    @BindView(R.id.recycler_list)
    RecyclerView recyclerList;
    @BindView(R.id.et_product_name)
    EditText etProductName;
    @BindView(R.id.et_product_subname)
    EditText etProductSubname;
    @BindView(R.id.et_product_price)
    EditText etProductPrice;
    @BindView(R.id.et_product_stock)
    EditText etProductStock;
    private ImageChooseAdapter imageChooseAdapter;
    private List<ImageChooseBean> imageChooseBeanList = new ArrayList<>();
    private int validateStock;
    private double validatePrice;
    private String validateSubName;
    private String validateName;
    private ProgressDialogUtils progressDialogUtils;
    private Product productBean;

    @Override
    public void setupActivityComponent(@NonNull AppComponent appComponent) {
        DaggerCreateProductComponent.builder()
                .appComponent(appComponent)
                .createProductModule(new CreateProductModule(this))
                .build()
                .inject(this);
    }

    @Override
    public int initView(@Nullable Bundle savedInstanceState) {
        return R.layout.activity_create_product;
    }

    @Override
    public void initData(@Nullable Bundle savedInstanceState) {
        toolbarTitle.setText("????????????");
        toolbarBack.setVisibility(View.VISIBLE);
        toolbarRight.setText("??????");
        toolbarRight.setVisibility(View.VISIBLE);
        toolbarRight.setOnClickListener(v -> validateDate());

        recyclerList.setLayoutManager(new GridLayoutManager(mContext, 3));
        recyclerList.addItemDecoration(new ImageItemDecoration(2));
        List<ImageChooseBean> data = new ArrayList<>();
        ImageChooseBean imageChooseBean = new ImageChooseBean();
        imageChooseBean.setItemType(ImageChooseBean.RES);
        data.add(imageChooseBean);
        imageChooseAdapter = new ImageChooseAdapter(data);
        imageChooseAdapter.setOnItemClickListener((adapter, view, position) -> {
            if (((MultiItemEntity) adapter.getData().get(position)).getItemType() == ImageChooseBean.RES) {
                EasyPhotos.createAlbum(this, true, GlideEngine.getInstance())//??????????????????????????????????????????????????????[??????Glide?????????????????????](https://github.com/HuanTanSheng/EasyPhotos/wiki/12-%E9%85%8D%E7%BD%AEImageEngine%EF%BC%8C%E6%94%AF%E6%8C%81%E6%89%80%E6%9C%89%E5%9B%BE%E7%89%87%E5%8A%A0%E8%BD%BD%E5%BA%93)
                        .setFileProviderAuthority(AppConstant.Image.FILE_PROVIDER)//????????????????????????`FileProvider?????????`
                        .setCount(6 - imageChooseBeanList.size())//???????????????????????????????????????1
                        .start(3);
            } else {
                imageChooseBeanList.remove(position);
                refreshRecyclerList();
            }
        });
        recyclerList.setAdapter(imageChooseAdapter);

        initIntentDate();
    }

    private void initIntentDate() {
        productBean = (Product) getIntent().getSerializableExtra(AppConstant.ActivityIntent.PRODUCT_BEAN);
        if (productBean != null) {
            List<String> images = Arrays.asList(productBean.getSubImages().split(","));
            List<ImageChooseBean> imageChooseBeans = new ArrayList<>();
            for (String url : images) {
                ImageChooseBean imageChooseBean = new ImageChooseBean();
                imageChooseBean.setImageUrl(url);
                imageChooseBean.setItemType(ImageChooseBean.URL);
                imageChooseBeans.add(imageChooseBean);
            }
            imageChooseBeanList.addAll(imageChooseBeans);
            refreshRecyclerList();


            etProductName.setText(productBean.getName());
            etProductSubname.setText(productBean.getSubtitle());
            etProductPrice.setText(String.format("%s", productBean.getPrice()));
            etProductStock.setText(String.format("%s", productBean.getStock()));

            toolbarTitle.setText("????????????");
        }
    }

    private void validateDate() {
        validateName = etProductName.getText().toString().trim();
        if (TextUtils.isEmpty(validateName)) {
            showMessage("?????????????????????");
            return;
        }

        validateSubName = etProductSubname.getText().toString().trim();
        if (TextUtils.isEmpty(validateSubName)) {
            showMessage("????????????????????????");
            return;
        }

        String priceStr = etProductPrice.getText().toString().trim();
        if (TextUtils.isEmpty(priceStr)) {
            showMessage("??????????????????");
            return;
        }
        validatePrice = Double.parseDouble(priceStr);

        String stockStr = etProductStock.getText().toString().trim();
        if (TextUtils.isEmpty(stockStr)) {
            showMessage("?????????????????????");
            return;
        }

        validateStock = Integer.parseInt(stockStr);

        if (imageChooseBeanList.isEmpty()) {
            showMessage("????????????????????????");
            return;
        }

        if (mPresenter != null) {
            mPresenter.uploadImages(imageChooseBeanList);
        }

    }

    private void refreshRecyclerList() {
        List<ImageChooseBean> images = new ArrayList<>(imageChooseBeanList);
        if (imageChooseBeanList.size() < 6) {
            ImageChooseBean imageBean = new ImageChooseBean();
            imageBean.setItemType(ImageChooseBean.RES);
            images.add(imageBean);
        }
        imageChooseAdapter.setNewData(images);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (RESULT_OK == resultCode && requestCode == 3) {
            //????????????????????????????????????????????????????????????????????????????????????
            List<String> resultPaths = data.getStringArrayListExtra(EasyPhotos.RESULT_PATHS);
            //????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
            boolean selectedOriginal = data.getBooleanExtra(EasyPhotos.RESULT_SELECTED_ORIGINAL, false);

            List<ImageChooseBean> imageChooseBeans = new ArrayList<>();
            for (String url : resultPaths) {
                ImageChooseBean imageChooseBean = new ImageChooseBean();
                imageChooseBean.setImageUrl(url);
                imageChooseBean.setItemType(ImageChooseBean.URL);
                imageChooseBeans.add(imageChooseBean);
            }
            imageChooseBeanList.addAll(imageChooseBeans);
            refreshRecyclerList();
        }
    }

    @Override
    public void showLoading() {
        progressDialogUtils = ProgressDialogUtils.getInstance(mContext).show();

    }

    @Override
    public void hideLoading() {
        progressDialogUtils.dismiss();
    }

    @Override
    public void showMessage(@NonNull String message) {
        ArmsUtils.snackbarText(message);
    }

    @Override
    public void launchActivity(@NonNull Intent intent) {

    }

    @Override
    public void killMyself() {
        finish();
    }

    @Override
    public void getUploadUrls(List<String> data) {
        if (mPresenter != null) {
            mPresenter.createProduct(productBean == null ? null : productBean.getId(), 0, validateName, validateSubName, data.get(0), data, validatePrice, validateStock, 1);
        }
    }
}
