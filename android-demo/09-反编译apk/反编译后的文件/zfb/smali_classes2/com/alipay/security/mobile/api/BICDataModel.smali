.class public Lcom/alipay/security/mobile/api/BICDataModel;
.super Ljava/lang/Object;
.source "BICDataModel.java"


# static fields
.field public static final AUTHTYPE_BARCODE:I = 0x3

.field public static final AUTHTYPE_FINGERPRINT:I = 0x1

.field public static final AUTHTYPE_PASSWORDLESS:I = 0x2

.field public static final CLIENT_STATUS_CLOSED:I = 0x0

.field public static final CLIENT_STATUS_DELETED:I = 0x1

.field public static final CLIENT_STATUS_OPEN:I = 0x2

.field public static final CLIENT_STATUS_UNKNOWN:I = 0x3

.field public static final PROTOCOL_TYPE_ALIPAY:I = 0x2

.field public static final PROTOCOL_TYPE_FIDO:I = 0x4

.field public static final PROTOCOL_TYPE_FIDO_ALIPAY:I = 0x3

.field public static final PROTOCOL_TYPE_NNL_FIDO:I = 0x1

.field public static final WEARABLETYPE_BARCELET:I = 0x1

.field public static final WEARABLETYPE_WATCH:I = 0x2


# instance fields
.field private authParameter:Ljava/lang/String;

.field private authType:I

.field private clientStatus:I

.field private deviceId:Ljava/lang/String;

.field private phoneModel:Ljava/lang/String;

.field private protocalType:I

.field private protocalVersion:I

.field private serviceVersion:I

.field private vendor:I

.field private wearableType:I


# direct methods
.method public constructor <init>(IIIIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput p1, p0, Lcom/alipay/security/mobile/api/BICDataModel;->clientStatus:I

    .line 151
    iput p2, p0, Lcom/alipay/security/mobile/api/BICDataModel;->authType:I

    .line 152
    iput p3, p0, Lcom/alipay/security/mobile/api/BICDataModel;->wearableType:I

    .line 153
    iput p4, p0, Lcom/alipay/security/mobile/api/BICDataModel;->protocalType:I

    .line 154
    iput p5, p0, Lcom/alipay/security/mobile/api/BICDataModel;->protocalVersion:I

    .line 155
    iput p6, p0, Lcom/alipay/security/mobile/api/BICDataModel;->vendor:I

    .line 156
    iput p7, p0, Lcom/alipay/security/mobile/api/BICDataModel;->serviceVersion:I

    .line 157
    iput-object p8, p0, Lcom/alipay/security/mobile/api/BICDataModel;->deviceId:Ljava/lang/String;

    .line 158
    iput-object p9, p0, Lcom/alipay/security/mobile/api/BICDataModel;->phoneModel:Ljava/lang/String;

    .line 159
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/security/mobile/api/BICDataModel;->authParameter:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const-string/jumbo v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 125
    array-length v1, v0

    if-ge v1, v3, :cond_0

    .line 145
    :goto_0
    return-void

    .line 129
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alipay/security/mobile/api/BICDataModel;->clientStatus:I

    .line 130
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alipay/security/mobile/api/BICDataModel;->authType:I

    .line 131
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alipay/security/mobile/api/BICDataModel;->wearableType:I

    .line 132
    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alipay/security/mobile/api/BICDataModel;->protocalType:I

    .line 133
    const/4 v1, 0x4

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alipay/security/mobile/api/BICDataModel;->protocalVersion:I

    .line 134
    const/4 v1, 0x5

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alipay/security/mobile/api/BICDataModel;->vendor:I

    .line 136
    array-length v1, v0

    const/4 v2, 0x7

    if-lt v1, v2, :cond_1

    .line 137
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/security/mobile/api/BICDataModel;->serviceVersion:I

    .line 142
    :goto_1
    iput-object p2, p0, Lcom/alipay/security/mobile/api/BICDataModel;->deviceId:Ljava/lang/String;

    .line 143
    iput-object p4, p0, Lcom/alipay/security/mobile/api/BICDataModel;->phoneModel:Ljava/lang/String;

    .line 144
    iput-object p3, p0, Lcom/alipay/security/mobile/api/BICDataModel;->authParameter:Ljava/lang/String;

    goto :goto_0

    .line 139
    :cond_1
    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/security/mobile/api/BICDataModel;->serviceVersion:I

    goto :goto_1
.end method


# virtual methods
.method final getAuthInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/alipay/security/mobile/api/BICDataModel;->clientStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/security/mobile/api/BICDataModel;->authType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/security/mobile/api/BICDataModel;->wearableType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/security/mobile/api/BICDataModel;->protocalType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/security/mobile/api/BICDataModel;->protocalVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/security/mobile/api/BICDataModel;->vendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/security/mobile/api/BICDataModel;->serviceVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthParameter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alipay/security/mobile/api/BICDataModel;->authParameter:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthType()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/alipay/security/mobile/api/BICDataModel;->authType:I

    return v0
.end method

.method public getClientStatus()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/alipay/security/mobile/api/BICDataModel;->clientStatus:I

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/alipay/security/mobile/api/BICDataModel;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/alipay/security/mobile/api/BICDataModel;->phoneModel:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocalType()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/alipay/security/mobile/api/BICDataModel;->protocalType:I

    return v0
.end method

.method public getProtocalVersion()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/alipay/security/mobile/api/BICDataModel;->protocalVersion:I

    return v0
.end method

.method public getServiceVersion()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/alipay/security/mobile/api/BICDataModel;->serviceVersion:I

    return v0
.end method

.method public getVendor()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/alipay/security/mobile/api/BICDataModel;->vendor:I

    return v0
.end method

.method public getWearableType()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/alipay/security/mobile/api/BICDataModel;->wearableType:I

    return v0
.end method
