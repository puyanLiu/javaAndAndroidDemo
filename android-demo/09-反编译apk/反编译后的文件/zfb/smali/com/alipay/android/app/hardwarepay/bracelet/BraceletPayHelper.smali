.class public abstract Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;
.super Lcom/alipay/android/app/hardwarepay/base/BaseCommonPayHelper;


# static fields
.field private static a:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/base/BaseCommonPayHelper;-><init>()V

    return-void
.end method

.method public static a()Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;->a:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;

    invoke-direct {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;-><init>()V

    sput-object v0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;->a:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

    .line 24
    :cond_0
    sget-object v0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;->a:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;ILjava/lang/String;)I
.end method

.method public abstract a(IILjava/lang/String;Landroid/content/Context;)V
.end method

.method public abstract b()[Ljava/lang/String;
.end method
