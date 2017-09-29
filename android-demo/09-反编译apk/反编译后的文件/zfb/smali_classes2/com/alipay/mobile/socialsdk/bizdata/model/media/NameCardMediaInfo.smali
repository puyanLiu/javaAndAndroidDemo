.class public Lcom/alipay/mobile/socialsdk/bizdata/model/media/NameCardMediaInfo;
.super Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;
.source "NameCardMediaInfo.java"


# instance fields
.field private i:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public getI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/NameCardMediaInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/NameCardMediaInfo;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/NameCardMediaInfo;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setI(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/NameCardMediaInfo;->i:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setN(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/NameCardMediaInfo;->n:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/NameCardMediaInfo;->uid:Ljava/lang/String;

    .line 24
    return-void
.end method
