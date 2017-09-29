.class public Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;
.super Ljava/lang/Object;
.source "WearableConfigModel.java"


# static fields
.field private static final KEY_MAC:Ljava/lang/String; = "mac"

.field private static final KEY_MODEL:Ljava/lang/String; = "model"

.field private static final KEY_PASSWORDLESS_REGISTER_TIP:Ljava/lang/String; = "tip"

.field private static final KEY_PASSWORDLESS_SUPPORT:Ljava/lang/String; = "pass"

.field private static final KEY_QRCODE_BLUETOOTH:Ljava/lang/String; = "qrbl"

.field private static final KEY_QRCODE_SUPPORT:Ljava/lang/String; = "qr"

.field private static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final PASSWORDLESS_TIP_KNOCK:I = 0x1

.field public static final PASSWORDLESS_TIP_NOT:I = 0x0

.field public static final QRCODE_BLUETOOTH_BLE:Ljava/lang/String; = "ble"

.field public static final QRCODE_BLUETOOTH_SPP:Ljava/lang/String; = "spp"

.field public static final WEARABLETYPE_ALL:I = 0x0

.field public static final WEARABLETYPE_BARCELET:I = 0x1

.field public static final WEARABLETYPE_WATCH:I = 0x2


# instance fields
.field private macAddress:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private passwordlessTip:Ljava/lang/String;

.field private qrCodeBluetooth:Ljava/lang/String;

.field private supportPasswordless:Z

.field private supportQRCode:Z

.field private wearableType:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-nez p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const-string/jumbo v0, "mac"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;->macAddress:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;->macAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    const-string/jumbo v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;->wearableType:I

    .line 76
    const-string/jumbo v0, "model"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;->model:Ljava/lang/String;

    .line 77
    const-string/jumbo v0, "pass"

    const-string/jumbo v1, "0"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;->supportPasswordless:Z

    .line 78
    const-string/jumbo v0, "tip"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;->passwordlessTip:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, "qr"

    const-string/jumbo v1, "0"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;->supportQRCode:Z

    .line 80
    const-string/jumbo v0, "qrbl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;->qrCodeBluetooth:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getPasswordlessTip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;->passwordlessTip:Ljava/lang/String;

    return-object v0
.end method

.method public getQRCodeBluetooth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;->qrCodeBluetooth:Ljava/lang/String;

    return-object v0
.end method

.method public getWearableType()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;->wearableType:I

    return v0
.end method

.method public isSupportPasswordless()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;->supportPasswordless:Z

    return v0
.end method

.method public isSupportQRCode()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;->supportQRCode:Z

    return v0
.end method
