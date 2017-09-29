.class final Lcom/alipay/android/phone/businesscommon/advertisement/impl/r;
.super Ljava/lang/Object;
.source "AdvertisementServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/r;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 129
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    :cond_0
    const-string/jumbo v0, "AdvertisementService.adinitial\u5f00\u59cb"

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/g/a;

    move-result-object v0

    .line 133
    const-class v1, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    .line 132
    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a(Ljava/lang/Class;)V

    .line 134
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/e/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->a(Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSpaceInfoCallBack;)V

    .line 138
    :cond_1
    return-void
.end method
