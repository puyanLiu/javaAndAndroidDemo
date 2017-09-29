.class public interface abstract Lcom/alipay/mobile/h5container/api/H5Page;
.super Ljava/lang/Object;
.source "H5Page.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5CoreNode;


# virtual methods
.method public abstract exitPage()Z
.end method

.method public abstract getAvailablePageData()Lcom/alipay/mobile/h5container/api/H5AvailablePageData;
.end method

.method public abstract getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;
.end method

.method public abstract getContentView()Landroid/view/View;
.end method

.method public abstract getContext()Lcom/alipay/mobile/h5container/api/H5Context;
.end method

.method public abstract getLastTouch()J
.end method

.method public abstract getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;
.end method

.method public abstract getParams()Landroid/os/Bundle;
.end method

.method public abstract getSession()Lcom/alipay/mobile/h5container/api/H5Session;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;
.end method

.method public abstract loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract loadUrl(Ljava/lang/String;)V
.end method

.method public abstract setHandler(Lcom/alipay/mobile/h5container/api/H5Page$H5PageHandler;)V
.end method

.method public abstract setTextSize(I)V
.end method
