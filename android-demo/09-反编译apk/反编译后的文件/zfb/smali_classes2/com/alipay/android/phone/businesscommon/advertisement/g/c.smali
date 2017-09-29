.class final Lcom/alipay/android/phone/businesscommon/advertisement/g/c;
.super Ljava/lang/Object;
.source "AdDBCacheSingleton.java"


# static fields
.field private static a:Lcom/alipay/android/phone/businesscommon/advertisement/g/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;-><init>(B)V

    sput-object v0, Lcom/alipay/android/phone/businesscommon/advertisement/g/c;->a:Lcom/alipay/android/phone/businesscommon/advertisement/g/a;

    .line 52
    return-void
.end method

.method static synthetic a()Lcom/alipay/android/phone/businesscommon/advertisement/g/a;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/alipay/android/phone/businesscommon/advertisement/g/c;->a:Lcom/alipay/android/phone/businesscommon/advertisement/g/a;

    return-object v0
.end method
