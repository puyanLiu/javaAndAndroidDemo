.class public final Lcom/alipay/android/phone/a/a/i;
.super Lcom/alipay/android/phone/a/a/b;
.source "PublicPlatformDataSource.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/a/a/b;-><init>(Ljava/lang/String;)V

    .line 9
    iput-boolean v1, p0, Lcom/alipay/android/phone/a/a/i;->d:Z

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/a/a/i;->c:Z

    .line 11
    iput-boolean v1, p0, Lcom/alipay/android/phone/a/a/i;->f:Z

    .line 12
    const-string/jumbo v0, "publicplatformclient"

    iput-object v0, p0, Lcom/alipay/android/phone/a/a/i;->p:Ljava/lang/String;

    .line 13
    return-void
.end method
