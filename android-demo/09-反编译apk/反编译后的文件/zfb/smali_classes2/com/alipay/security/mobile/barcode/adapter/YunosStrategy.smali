.class public Lcom/alipay/security/mobile/barcode/adapter/YunosStrategy;
.super Ljava/lang/Object;
.source "YunosStrategy.java"

# interfaces
.implements Lcom/alipay/security/mobile/barcode/adapter/IWatchStrategy;


# static fields
.field private static final TAG:Ljava/lang/String; = "YunosStrategy"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 1

    .prologue
    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/adapter/YunosStrategy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;->disconnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alipay/security/mobile/barcode/adapter/YunosStrategy;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method public sendDataToDevice(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/security/mobile/barcode/adapter/BarcodeCallback;)I
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/adapter/YunosStrategy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/alipay/security/mobile/barcode/adapter/YunosStrategy$1;

    invoke-direct {v1, p0, p3, v0, p2}, Lcom/alipay/security/mobile/barcode/adapter/YunosStrategy$1;-><init>(Lcom/alipay/security/mobile/barcode/adapter/YunosStrategy;Lcom/alipay/security/mobile/barcode/adapter/BarcodeCallback;Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;->setYunOSBLECallback(Lcom/alipay/security/mobile/barcode/yunoswear/YunOSBLECallback;)V

    .line 65
    invoke-virtual {v0}, Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;->getConnectedBLEDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v0, p2}, Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;->sendMessage(Ljava/lang/String;)V

    .line 71
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 68
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;->connect(Ljava/lang/String;)V

    goto :goto_0
.end method
