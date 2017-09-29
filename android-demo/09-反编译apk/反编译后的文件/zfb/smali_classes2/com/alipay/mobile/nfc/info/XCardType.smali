.class public Lcom/alipay/mobile/nfc/info/XCardType;
.super Lcom/alipay/mobile/nfc/info/NfcType;
.source "XCardType.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final BIZ_TYPE_CITY_BEIJING:Ljava/lang/String; = "beijing"

.field public static final BIZ_TYPE_CITY_CHANGAN:Ljava/lang/String; = "changan"

.field public static final BIZ_TYPE_CITY_SHENZHEN:Ljava/lang/String; = "shenzhen"

.field public static final BIZ_TYPE_CITY_WUHAN:Ljava/lang/String; = "wuhan"

.field public static final BIZ_TYPE_YANGCHENG:Ljava/lang/String; = "yangcheng"

.field public static final FILTER_TYPE_CARD:Ljava/lang/String; = "card"

.field public static final TECH_TYPE_ISODEP:Ljava/lang/String; = "IsoDep"


# instance fields
.field private appType:Ljava/lang/String;

.field private bizType:Ljava/lang/String;

.field private techType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alipay/mobile/nfc/info/NfcType;-><init>()V

    .line 21
    const-string/jumbo v0, "*"

    iput-object v0, p0, Lcom/alipay/mobile/nfc/info/XCardType;->techType:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "*"

    iput-object v0, p0, Lcom/alipay/mobile/nfc/info/XCardType;->appType:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "*"

    iput-object v0, p0, Lcom/alipay/mobile/nfc/info/XCardType;->bizType:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/nfc/info/NfcType;-><init>()V

    .line 21
    const-string/jumbo v0, "*"

    iput-object v0, p0, Lcom/alipay/mobile/nfc/info/XCardType;->techType:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "*"

    iput-object v0, p0, Lcom/alipay/mobile/nfc/info/XCardType;->appType:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "*"

    iput-object v0, p0, Lcom/alipay/mobile/nfc/info/XCardType;->bizType:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "card"

    invoke-super {p0, v0}, Lcom/alipay/mobile/nfc/info/NfcType;->setFilterId(Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/alipay/mobile/nfc/info/XCardType;->techType:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/alipay/mobile/nfc/info/XCardType;->appType:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/alipay/mobile/nfc/info/XCardType;->bizType:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/nfc/info/XCardType;->appType:Ljava/lang/String;

    return-object v0
.end method

.method public getBizId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/nfc/info/XCardType;->bizType:Ljava/lang/String;

    return-object v0
.end method

.method public getTechId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/nfc/info/XCardType;->techType:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alipay/mobile/nfc/info/XCardType;->appType:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setBizId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alipay/mobile/nfc/info/XCardType;->bizType:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setTechId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alipay/mobile/nfc/info/XCardType;->techType:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/info/XCardType;->getFilterId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/info/XCardType;->getTechId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/info/XCardType;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/info/XCardType;->getBizId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
