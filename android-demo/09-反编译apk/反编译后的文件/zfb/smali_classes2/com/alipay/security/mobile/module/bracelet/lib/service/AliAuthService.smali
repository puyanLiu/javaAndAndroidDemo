.class public Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;
.super Ljava/lang/Object;
.source "AliAuthService.java"

# interfaces
.implements Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;


# instance fields
.field private mCharCipher:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mCharControl:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mCharInfo:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mCharKey:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mCharPlain:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private final mPeripheral:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;


# direct methods
.method public constructor <init>(Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mCharKey:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 23
    iput-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mCharPlain:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 24
    iput-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mCharCipher:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 25
    iput-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mCharControl:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 26
    iput-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mCharInfo:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 29
    iput-object p1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mPeripheral:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;

    .line 30
    return-void
.end method

.method private initCharacteristics()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 38
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->initXiaomiCharacteristics()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    .line 44
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->initCommonCharacteristics()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-nez v1, :cond_0

    .line 49
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private initCommonCharacteristics()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 77
    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mPeripheral:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;

    sget-object v2, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->COMMON_UUID_SERVICE:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    .line 78
    if-nez v1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    sget-object v2, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->COMMON_UUID_CHARACTERISTIC_KEY:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mCharKey:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 82
    iget-object v2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mCharKey:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v2, :cond_0

    .line 85
    sget-object v2, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->COMMON_UUID_CHARACTERISTIC_PLAIN:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mCharPlain:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 86
    iget-object v2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mCharPlain:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v2, :cond_0

    .line 89
    sget-object v2, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->COMMON_UUID_CHARACTERISTIC_CIPHER:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mCharCipher:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 90
    iget-object v2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mCharCipher:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v2, :cond_0

    .line 93
    sget-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->COMMON_UUID_CHARACTERISTIC_CONTROL:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mCharControl:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 94
    sget-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->COMMON_UUID_CHARACTERISTIC_INFO:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mCharInfo:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 95
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initXiaomiCharacteristics()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 53
    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mPeripheral:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;

    sget-object v2, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->UUID_SERVICE:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    .line 54
    if-nez v1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    sget-object v2, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->UUID_CHARACTERISTIC_KEY:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mCharKey:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 58
    iget-object v2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mCharKey:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v2, :cond_0

    .line 61
    sget-object v2, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->UUID_CHARACTERISTIC_PLAIN:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mCharPlain:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 62
    iget-object v2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mCharPlain:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v2, :cond_0

    .line 65
    sget-object v2, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->UUID_CHARACTERISTIC_CIPHER:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mCharCipher:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 66
    iget-object v2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mCharCipher:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v2, :cond_0

    .line 69
    sget-object v2, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->UUID_CHARACTERISTIC_CONTROL:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mCharControl:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 70
    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mCharControl:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v1, :cond_0

    .line 73
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public authenticate(I[B)[B
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 120
    if-nez p2, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-object v0

    .line 123
    :cond_1
    array-length v2, p2

    if-lt v2, v5, :cond_0

    .line 127
    const/16 v2, 0x14

    new-array v2, v2, [B

    .line 130
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextBytes([B)V

    .line 132
    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 133
    const/4 v3, 0x1

    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 134
    const/4 v3, 0x2

    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 135
    const/4 v3, 0x3

    shr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 136
    :goto_1
    if-ge v1, v5, :cond_2

    .line 137
    add-int/lit8 v3, v1, 0x4

    aget-byte v4, p2, v1

    aput-byte v4, v2, v3

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 139
    :cond_2
    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mPeripheral:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;

    iget-object v3, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mCharPlain:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v3, v2}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->write(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Z

    move-result v1

    .line 140
    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mPeripheral:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;

    iget-object v2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mCharCipher:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v2}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->read(Landroid/bluetooth/BluetoothGattCharacteristic;)[B

    move-result-object v1

    .line 144
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 148
    goto :goto_0
.end method

.method public authroize(I[B)Z
    .locals 5

    .prologue
    const/16 v4, 0x10

    const/4 v0, 0x0

    .line 102
    if-nez p2, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    array-length v1, p2

    if-lt v1, v4, :cond_0

    .line 108
    const/16 v1, 0x14

    new-array v1, v1, [B

    .line 109
    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 110
    const/4 v2, 0x1

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 111
    const/4 v2, 0x2

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 112
    const/4 v2, 0x3

    shr-int/lit8 v3, p1, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 113
    :goto_1
    if-ge v0, v4, :cond_2

    .line 114
    add-int/lit8 v2, v0, 0x4

    aget-byte v3, p2, v0

    aput-byte v3, v1, v2

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mPeripheral:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;

    iget-object v2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mCharKey:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->write(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Z

    move-result v0

    goto :goto_0
.end method

.method public cleanup()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public confirm(I)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 152
    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 153
    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 154
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 155
    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 156
    const/4 v1, 0x3

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 157
    const/4 v1, 0x4

    aput-byte v3, v0, v1

    .line 158
    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mPeripheral:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;

    iget-object v2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mCharControl:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->write(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Z

    move-result v0

    return v0
.end method

.method public getWearableInfo()[B
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mPeripheral:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;

    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mCharInfo:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->read(Landroid/bluetooth/BluetoothGattCharacteristic;)[B

    move-result-object v0

    .line 180
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 181
    :cond_0
    const/4 v0, 0x0

    .line 184
    :cond_1
    return-object v0
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->initCharacteristics()Z

    move-result v0

    return v0
.end method

.method public showPayment(I[B)Z
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x0

    .line 162
    const/16 v1, 0x9

    new-array v1, v1, [B

    .line 163
    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 164
    const/4 v2, 0x1

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 165
    const/4 v2, 0x2

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 166
    const/4 v2, 0x3

    shr-int/lit8 v3, p1, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 167
    const/16 v2, 0xa

    aput-byte v2, v1, v4

    .line 169
    array-length v2, p2

    if-eq v2, v4, :cond_0

    .line 175
    :goto_0
    return v0

    .line 172
    :cond_0
    :goto_1
    if-ge v0, v4, :cond_1

    .line 173
    add-int/lit8 v2, v0, 0x5

    aget-byte v3, p2, v0

    aput-byte v3, v1, v2

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mPeripheral:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;

    iget-object v2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;->mCharControl:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->write(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Z

    move-result v0

    goto :goto_0
.end method
