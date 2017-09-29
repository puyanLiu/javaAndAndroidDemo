.class public Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionPackageMediaInfo;
.super Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;
.source "EmotionPackageMediaInfo.java"


# instance fields
.field private desc:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionPackageMediaInfo;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionPackageMediaInfo;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionPackageMediaInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionPackageMediaInfo;->desc:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionPackageMediaInfo;->image:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionPackageMediaInfo;->title:Ljava/lang/String;

    .line 20
    return-void
.end method
