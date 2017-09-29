.class public Lcom/alipay/nfc/model/CardInfo;
.super Ljava/lang/Object;
.source "CardInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x65f3815fa6f9d425L


# instance fields
.field private busi_id:Ljava/lang/String;

.field private busi_type:Ljava/lang/String;

.field private card_type:Lcom/alipay/nfc/model/CardTypeEnum;

.field private cash:Ljava/lang/String;

.field private class_name:Ljava/lang/String;

.field private count:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private logs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/nfc/model/LogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serl:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addLog(Lcom/alipay/nfc/model/LogInfo;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alipay/nfc/model/CardInfo;->logs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/nfc/model/CardInfo;->logs:Ljava/util/List;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/alipay/nfc/model/CardInfo;->logs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method

.method public addParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alipay/nfc/model/CardInfo;->params:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/nfc/model/CardInfo;->params:Ljava/util/Map;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/alipay/nfc/model/CardInfo;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-void
.end method

.method public getBusi_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alipay/nfc/model/CardInfo;->busi_id:Ljava/lang/String;

    return-object v0
.end method

.method public getBusi_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alipay/nfc/model/CardInfo;->busi_type:Ljava/lang/String;

    return-object v0
.end method

.method public getCard_type()Lcom/alipay/nfc/model/CardTypeEnum;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alipay/nfc/model/CardInfo;->card_type:Lcom/alipay/nfc/model/CardTypeEnum;

    return-object v0
.end method

.method public getCash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alipay/nfc/model/CardInfo;->cash:Ljava/lang/String;

    return-object v0
.end method

.method public getClass_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alipay/nfc/model/CardInfo;->class_name:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/nfc/model/CardInfo;->count:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/nfc/model/CardInfo;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/nfc/model/CardInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLogs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/nfc/model/LogInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alipay/nfc/model/CardInfo;->logs:Ljava/util/List;

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alipay/nfc/model/CardInfo;->params:Ljava/util/Map;

    return-object v0
.end method

.method public getSerl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/nfc/model/CardInfo;->serl:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alipay/nfc/model/CardInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setBusi_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/alipay/nfc/model/CardInfo;->busi_id:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setBusi_type(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/alipay/nfc/model/CardInfo;->busi_type:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setCard_type(Lcom/alipay/nfc/model/CardTypeEnum;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/alipay/nfc/model/CardInfo;->card_type:Lcom/alipay/nfc/model/CardTypeEnum;

    .line 142
    return-void
.end method

.method public setCash(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/alipay/nfc/model/CardInfo;->cash:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setClass_name(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/alipay/nfc/model/CardInfo;->class_name:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setCount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alipay/nfc/model/CardInfo;->count:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alipay/nfc/model/CardInfo;->date:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alipay/nfc/model/CardInfo;->id:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setLogs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/nfc/model/LogInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alipay/nfc/model/CardInfo;->logs:Ljava/util/List;

    .line 112
    return-void
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    iput-object p1, p0, Lcom/alipay/nfc/model/CardInfo;->params:Ljava/util/Map;

    .line 127
    return-void
.end method

.method public setSerl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alipay/nfc/model/CardInfo;->serl:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alipay/nfc/model/CardInfo;->version:Ljava/lang/String;

    .line 80
    return-void
.end method
