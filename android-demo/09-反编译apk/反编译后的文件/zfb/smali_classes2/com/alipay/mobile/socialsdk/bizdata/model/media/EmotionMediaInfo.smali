.class public Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;
.super Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;
.source "EmotionMediaInfo.java"


# instance fields
.field public emotionFid:Ljava/lang/String;

.field public emotionId:Ljava/lang/String;

.field private h:F

.field public hasGif:Z

.field public localPath:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public packageId:Ljava/lang/String;

.field private w:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->emotionFid:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->packageId:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->emotionId:Ljava/lang/String;

    .line 35
    iput-boolean p4, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->hasGif:Z

    .line 36
    iput-object p5, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->localPath:Ljava/lang/String;

    .line 37
    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->w:F

    .line 38
    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->h:F

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;II)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->emotionFid:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->packageId:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->emotionId:Ljava/lang/String;

    .line 25
    iput-boolean p4, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->hasGif:Z

    .line 26
    iput-object p5, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->localPath:Ljava/lang/String;

    .line 27
    int-to-float v0, p6

    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->w:F

    .line 28
    int-to-float v0, p7

    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->h:F

    .line 29
    return-void
.end method


# virtual methods
.method public getEmotionFid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->emotionFid:Ljava/lang/String;

    return-object v0
.end method

.method public getEmotionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->emotionId:Ljava/lang/String;

    return-object v0
.end method

.method public getH()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->h:F

    float-to-int v0, v0

    return v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public getM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->packageId:Ljava/lang/String;

    return-object v0
.end method

.method public getW()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->w:F

    float-to-int v0, v0

    return v0
.end method

.method public isHasGif()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->hasGif:Z

    return v0
.end method

.method public setEmotionFid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->emotionFid:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setEmotionId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->emotionId:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setH(F)V
    .locals 0

    .prologue
    .line 102
    iput p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->h:F

    .line 103
    return-void
.end method

.method public setHasGif(Z)V
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->hasGif:Z

    .line 71
    return-void
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->localPath:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setM(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->m:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setPackageId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->packageId:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setW(F)V
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->w:F

    .line 95
    return-void
.end method
