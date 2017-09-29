.class public Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;
.super Ljava/lang/Object;
.source "BarcodeAdapter.java"

# interfaces
.implements Lcom/alipay/security/mobile/barcode/adapter/IWatchStrategy;


# static fields
.field private static final adapter:Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentStrategy:Lcom/alipay/security/mobile/barcode/adapter/IWatchStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;

    invoke-direct {v0}, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;-><init>()V

    sput-object v0, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;->adapter:Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static final getInstance()Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;->adapter:Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;

    return-object v0
.end method


# virtual methods
.method public disconnect()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;->mCurrentStrategy:Lcom/alipay/security/mobile/barcode/adapter/IWatchStrategy;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;->mCurrentStrategy:Lcom/alipay/security/mobile/barcode/adapter/IWatchStrategy;

    invoke-interface {v0}, Lcom/alipay/security/mobile/barcode/adapter/IWatchStrategy;->disconnect()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;->mCurrentStrategy:Lcom/alipay/security/mobile/barcode/adapter/IWatchStrategy;

    .line 94
    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public sendDataToDevice(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/security/mobile/barcode/adapter/BarcodeCallback;)I
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 44
    invoke-static {p1}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 86
    :goto_0
    return v0

    .line 47
    :cond_0
    const-string/jumbo v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 48
    aget-object v4, v3, v2

    .line 49
    const-string/jumbo v0, ""

    .line 50
    array-length v5, v3

    const/4 v6, 0x2

    if-lt v5, v6, :cond_1

    .line 51
    const/4 v0, 0x1

    aget-object v0, v3, v0

    .line 54
    :cond_1
    const/4 v3, 0x0

    .line 56
    invoke-static {v0}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 57
    const-string/jumbo v5, "ble"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 58
    new-instance v0, Lcom/alipay/security/mobile/barcode/adapter/YunosStrategy;

    invoke-direct {v0}, Lcom/alipay/security/mobile/barcode/adapter/YunosStrategy;-><init>()V

    .line 64
    :goto_1
    if-nez v0, :cond_2

    .line 65
    invoke-static {}, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->getConfig()Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->getModelByMacAddress(Ljava/lang/String;)Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;

    move-result-object v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    const-string/jumbo v5, "ble"

    invoke-virtual {v3}, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;->getQRCodeBluetooth()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 70
    new-instance v0, Lcom/alipay/security/mobile/barcode/adapter/YunosStrategy;

    invoke-direct {v0}, Lcom/alipay/security/mobile/barcode/adapter/YunosStrategy;-><init>()V

    .line 78
    :cond_2
    :goto_2
    if-nez v0, :cond_5

    move v0, v1

    .line 79
    goto :goto_0

    .line 59
    :cond_3
    const-string/jumbo v5, "spp"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 60
    new-instance v0, Lcom/alipay/security/mobile/barcode/adapter/SamsungStrategy;

    invoke-direct {v0}, Lcom/alipay/security/mobile/barcode/adapter/SamsungStrategy;-><init>()V

    goto :goto_1

    .line 71
    :cond_4
    const-string/jumbo v5, "spp"

    invoke-virtual {v3}, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;->getQRCodeBluetooth()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 73
    new-instance v0, Lcom/alipay/security/mobile/barcode/adapter/SamsungStrategy;

    invoke-direct {v0}, Lcom/alipay/security/mobile/barcode/adapter/SamsungStrategy;-><init>()V

    goto :goto_2

    .line 82
    :cond_5
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/alipay/security/mobile/barcode/adapter/IWatchStrategy;->init(Landroid/content/Context;)V

    .line 83
    invoke-interface {v0, v4, p2, p3}, Lcom/alipay/security/mobile/barcode/adapter/IWatchStrategy;->sendDataToDevice(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/security/mobile/barcode/adapter/BarcodeCallback;)I

    .line 84
    iput-object v0, p0, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;->mCurrentStrategy:Lcom/alipay/security/mobile/barcode/adapter/IWatchStrategy;

    move v0, v2

    .line 86
    goto :goto_0

    :cond_6
    move-object v0, v3

    goto :goto_1
.end method
