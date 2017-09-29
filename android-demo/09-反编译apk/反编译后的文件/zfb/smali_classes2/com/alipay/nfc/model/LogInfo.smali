.class public Lcom/alipay/nfc/model/LogInfo;
.super Ljava/lang/Object;
.source "LogInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2308c019dc73a137L


# instance fields
.field private cash:Ljava/lang/String;

.field private currency:Ljava/lang/String;

.field private datetime:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private optype:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/nfc/model/LogInfo;->cash:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/nfc/model/LogInfo;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getDatetime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/nfc/model/LogInfo;->datetime:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/nfc/model/LogInfo;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getOptype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/nfc/model/LogInfo;->optype:Ljava/lang/String;

    return-object v0
.end method

.method public optype(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alipay/nfc/model/LogInfo;->cash:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setCash(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/alipay/nfc/model/LogInfo;->cash:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/nfc/model/LogInfo;->currency:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setDatetime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alipay/nfc/model/LogInfo;->datetime:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alipay/nfc/model/LogInfo;->location:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setOptype(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alipay/nfc/model/LogInfo;->optype:Ljava/lang/String;

    .line 52
    return-void
.end method
