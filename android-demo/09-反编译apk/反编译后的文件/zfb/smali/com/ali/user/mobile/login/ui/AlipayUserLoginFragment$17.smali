.class Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$17;
.super Ljava/lang/Object;
.source "AlipayUserLoginFragment.java"

# interfaces
.implements Lcom/ali/user/mobile/service/UrlFetchService$UrlFetchCallback;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$17;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onH5Response(Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;)V
    .locals 3

    .prologue
    .line 587
    iget v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;->resultStatus:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 588
    new-instance v0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$17$1;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$17$1;-><init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$17;)V

    .line 600
    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;->h5Url:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/ali/user/mobile/h5/H5Wrapper;->startPage(Ljava/lang/String;Lcom/ali/user/mobile/h5/AUH5Plugin;)V

    .line 604
    :goto_0
    return-void

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$17;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;->memo:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method
