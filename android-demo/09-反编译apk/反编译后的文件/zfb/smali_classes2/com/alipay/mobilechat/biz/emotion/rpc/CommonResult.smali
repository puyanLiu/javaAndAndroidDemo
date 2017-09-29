.class public Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;
.super Lcom/alipay/mobilechat/biz/emotion/rpc/ToString;
.source "CommonResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public followAction:Ljava/lang/String;

.field public fullPage:Ljava/lang/String;

.field public msgType:Ljava/lang/String;

.field public resultCode:I

.field public resultDesc:Ljava/lang/String;

.field public resultView:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/mobilechat/biz/emotion/rpc/ToString;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;->success:Z

    .line 13
    return-void
.end method
