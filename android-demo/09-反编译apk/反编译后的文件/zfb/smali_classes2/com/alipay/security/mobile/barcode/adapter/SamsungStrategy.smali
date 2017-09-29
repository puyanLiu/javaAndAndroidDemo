.class public Lcom/alipay/security/mobile/barcode/adapter/SamsungStrategy;
.super Ljava/lang/Object;
.source "SamsungStrategy.java"

# interfaces
.implements Lcom/alipay/security/mobile/barcode/adapter/IWatchStrategy;


# static fields
.field private static final TAG:Ljava/lang/String; = "SamsungStrategy"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 2

    .prologue
    .line 70
    invoke-static {}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->instance()Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/adapter/SamsungStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->init(Landroid/content/Context;)V

    .line 72
    invoke-virtual {v0}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->closeConnection()V

    .line 73
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alipay/security/mobile/barcode/adapter/SamsungStrategy;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public sendDataToDevice(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/security/mobile/barcode/adapter/BarcodeCallback;)I
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->instance()Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/adapter/SamsungStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->init(Landroid/content/Context;)V

    .line 34
    new-instance v1, Lcom/alipay/security/mobile/barcode/adapter/SamsungStrategy$1;

    invoke-direct {v1, p0, p3}, Lcom/alipay/security/mobile/barcode/adapter/SamsungStrategy$1;-><init>(Lcom/alipay/security/mobile/barcode/adapter/SamsungStrategy;Lcom/alipay/security/mobile/barcode/adapter/BarcodeCallback;)V

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->setWatchCallback(Lcom/alipay/security/mobile/barcode/samsung/WatchCallback;)V

    .line 65
    invoke-virtual {v0, p1, p2}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->sendDataToDevice(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    return v0
.end method
