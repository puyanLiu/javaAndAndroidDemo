.class public abstract Lcom/alipay/android/phone/namecertify/service/NameCertifyService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doCallback(Landroid/os/Bundle;)V
.end method

.method public abstract doCertify(Landroid/os/Bundle;Lcom/alipay/android/phone/namecertify/service/NameCertifyCallback;)V
.end method

.method public abstract doCertify(Ljava/lang/String;Lcom/alipay/android/phone/namecertify/service/NameCertifyCallback;)V
.end method
