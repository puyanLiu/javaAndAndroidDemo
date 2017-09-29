.class public Lcom/alipay/mobile/nfc/info/NfcType;
.super Ljava/lang/Object;
.source "NfcType.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/alipay/mobile/nfc/info/NfcType;",
        ">;"
    }
.end annotation


# static fields
.field public static final FILTER_ID_CARD:Ljava/lang/String; = "card"

.field public static final TECH_ID_ISODEP:Ljava/lang/String; = "IsoDep"


# instance fields
.field private appId:Ljava/lang/String;

.field private bizId:Ljava/lang/String;

.field private filterId:Ljava/lang/String;

.field private techId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string/jumbo v0, "*"

    iput-object v0, p0, Lcom/alipay/mobile/nfc/info/NfcType;->filterId:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, "*"

    iput-object v0, p0, Lcom/alipay/mobile/nfc/info/NfcType;->techId:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, "*"

    iput-object v0, p0, Lcom/alipay/mobile/nfc/info/NfcType;->appId:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "*"

    iput-object v0, p0, Lcom/alipay/mobile/nfc/info/NfcType;->bizId:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string/jumbo v0, "*"

    iput-object v0, p0, Lcom/alipay/mobile/nfc/info/NfcType;->filterId:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, "*"

    iput-object v0, p0, Lcom/alipay/mobile/nfc/info/NfcType;->techId:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, "*"

    iput-object v0, p0, Lcom/alipay/mobile/nfc/info/NfcType;->appId:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "*"

    iput-object v0, p0, Lcom/alipay/mobile/nfc/info/NfcType;->bizId:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/alipay/mobile/nfc/info/NfcType;->filterId:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string/jumbo v0, "*"

    iput-object v0, p0, Lcom/alipay/mobile/nfc/info/NfcType;->filterId:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, "*"

    iput-object v0, p0, Lcom/alipay/mobile/nfc/info/NfcType;->techId:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, "*"

    iput-object v0, p0, Lcom/alipay/mobile/nfc/info/NfcType;->appId:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "*"

    iput-object v0, p0, Lcom/alipay/mobile/nfc/info/NfcType;->bizId:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/nfc/info/NfcType;->filterId:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/alipay/mobile/nfc/info/NfcType;->techId:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/alipay/mobile/nfc/info/NfcType;->appId:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/alipay/mobile/nfc/info/NfcType;->bizId:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 96
    const-string/jumbo v0, "*"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, -0x1

    .line 101
    :goto_0
    return v0

    .line 98
    :cond_0
    const-string/jumbo v0, "*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    const/4 v0, 0x1

    goto :goto_0

    .line 101
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/alipay/mobile/nfc/info/NfcType;)I
    .locals 2

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 73
    const/4 v0, -0x1

    .line 92
    :goto_0
    return v0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nfc/info/NfcType;->filterId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/nfc/info/NfcType;->getFilterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/nfc/info/NfcType;->techId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/nfc/info/NfcType;->getTechId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/nfc/info/NfcType;->appId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/nfc/info/NfcType;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/nfc/info/NfcType;->bizId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/nfc/info/NfcType;->getBizId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/nfc/info/NfcType;->bizId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/nfc/info/NfcType;->getBizId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/nfc/info/NfcType;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nfc/info/NfcType;->appId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/nfc/info/NfcType;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/nfc/info/NfcType;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nfc/info/NfcType;->techId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/nfc/info/NfcType;->getTechId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/nfc/info/NfcType;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nfc/info/NfcType;->filterId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/nfc/info/NfcType;->getFilterId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/nfc/info/NfcType;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 92
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/mobile/nfc/info/NfcType;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nfc/info/NfcType;->compareTo(Lcom/alipay/mobile/nfc/info/NfcType;)I

    move-result v0

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/nfc/info/NfcType;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getBizId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/nfc/info/NfcType;->bizId:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/nfc/info/NfcType;->filterId:Ljava/lang/String;

    return-object v0
.end method

.method public getTechId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/nfc/info/NfcType;->techId:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/nfc/info/NfcType;->appId:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setBizId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alipay/mobile/nfc/info/NfcType;->bizId:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setFilterId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alipay/mobile/nfc/info/NfcType;->filterId:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setTechId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/nfc/info/NfcType;->techId:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/info/NfcType;->getFilterId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/info/NfcType;->getTechId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/info/NfcType;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/info/NfcType;->getBizId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
