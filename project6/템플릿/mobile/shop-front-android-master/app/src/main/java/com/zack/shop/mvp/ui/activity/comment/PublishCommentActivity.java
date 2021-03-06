package com.zack.shop.mvp.ui.activity.comment;

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
import com.zack.shop.di.component.DaggerPublishCommentComponent;
import com.zack.shop.di.module.PublishCommentModule;
import com.zack.shop.mvp.contract.PublishCommentContract;
import com.zack.shop.mvp.http.entity.moment.ImageChooseBean;
import com.zack.shop.mvp.presenter.PublishCommentPresenter;
import com.zack.shop.mvp.ui.adapter.ImageChooseAdapter;
import com.zack.shop.mvp.ui.widget.ImageItemDecoration;
import com.zack.shop.mvp.utils.AppConstant;
import com.zack.shop.mvp.utils.GlideEngine;
import com.zack.shop.mvp.utils.ProgressDialogUtils;

import java.util.ArrayList;
import java.util.List;

import butterknife.BindView;

public class PublishCommentActivity extends BaseSupportActivity<PublishCommentPresenter> implements PublishCommentContract.View {


    @BindView(R.id.toolbar_back)
    RelativeLayout toolbarBack;
    @BindView(R.id.toolbar_title)
    TextView toolbarTitle;
    @BindView(R.id.toolbar_right)
    TextView toolbarRight;
    @BindView(R.id.et_content)
    EditText etContent;
    @BindView(R.id.recycler_list)
    RecyclerView recyclerList;
    private ImageChooseAdapter imageChooseAdapter;

    private List<ImageChooseBean> imageChooseBeanList = new ArrayList<>();
    private ProgressDialogUtils progressDialogUtils;

    @Override
    public void setupActivityComponent(@NonNull AppComponent appComponent) {
        DaggerPublishCommentComponent.builder()
                .appComponent(appComponent)
                .publishCommentModule(new PublishCommentModule(this
                ))
                .build().inject(this);
    }

    @Override
    public int initView(@Nullable Bundle savedInstanceState) {
        return R.layout.activity_publish_comment;
    }

    @Override
    public void initData(@Nullable Bundle savedInstanceState) {
        toolbarRight.setVisibility(View.VISIBLE);
        toolbarRight.setText("??????");
        toolbarRight.setOnClickListener((View v) -> {

            String etContentStr = etContent.getText().toString().trim();
            if (TextUtils.isEmpty(etContentStr)) {
                ArmsUtils.snackbarText("??????????????????");
                return;
            }

            if (imageChooseBeanList.size() == 0) {
                if (mPresenter != null) {
                    mPresenter.publishComment(etContentStr, "", "", "", new ArrayList<>());
                }
            } else {
                if (mPresenter != null) {
                    mPresenter.uploadImages(imageChooseBeanList);
                }
            }

        });
        toolbarTitle.setText("????????????");
        toolbarBack.setVisibility(View.VISIBLE);
        initRecyclerView();
    }

    private void initRecyclerView() {
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
        if (progressDialogUtils != null) progressDialogUtils.dismiss();
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

    }

    /**
     * ??????????????????????????????
     *
     * @param data
     */
    @Override
    public void getUploadUrls(List<String> data) {
        String etContentStr = etContent.getText().toString().trim();
        if (mPresenter != null) {
            mPresenter.publishComment(etContentStr, "", "", data.get(0), data);
        }
    }

    @Override
    public void publishCommentSuccess(String str) {
        ArmsUtils.snackbarText(str);
        finish();
    }
}
