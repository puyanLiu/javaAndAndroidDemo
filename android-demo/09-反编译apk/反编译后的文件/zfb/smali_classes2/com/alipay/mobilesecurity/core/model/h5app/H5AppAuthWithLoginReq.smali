.class public Lcom/alipay/mobilesecurity/core/model/h5app/H5AppAuthWithLoginReq;
.super Lcom/alipay/mobilesecurity/core/model/h5app/H5AppAuthReq;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public needBindingPage:Z

.field public returnTaobaoSsologinURL:Z

.field public ssoLogin:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/core/model/h5app/H5AppAuthReq;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobilesecurity/core/model/h5app/H5AppAuthWithLoginReq;->needBindingPage:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobilesecurity/core/model/h5app/H5AppAuthWithLoginReq;->returnTaobaoSsologinURL:Z

    return-void
.end method
