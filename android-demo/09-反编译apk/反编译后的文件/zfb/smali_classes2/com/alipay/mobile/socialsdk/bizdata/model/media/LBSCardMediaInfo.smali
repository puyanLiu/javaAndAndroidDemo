.class public Lcom/alipay/mobile/socialsdk/bizdata/model/media/LBSCardMediaInfo;
.super Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;
.source "LBSCardMediaInfo.java"


# instance fields
.field private d:Ljava/lang/String;

.field private img:Ljava/lang/String;

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/LBSCardMediaInfo;->img:Ljava/lang/String;

    .line 25
    if-eqz p2, :cond_0

    const-string/jumbo v0, "|"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    const-string/jumbo v0, "\\|"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 27
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/LBSCardMediaInfo;->d:Ljava/lang/String;

    .line 28
    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/LBSCardMediaInfo;->p:Ljava/lang/String;

    .line 34
    :goto_0
    return-void

    .line 30
    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/LBSCardMediaInfo;->d:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/LBSCardMediaInfo;->p:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/LBSCardMediaInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/LBSCardMediaInfo;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/LBSCardMediaInfo;->p:Ljava/lang/String;

    return-object v0
.end method

.method public setD(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/LBSCardMediaInfo;->d:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/LBSCardMediaInfo;->img:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setP(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/LBSCardMediaInfo;->p:Ljava/lang/String;

    .line 50
    return-void
.end method
