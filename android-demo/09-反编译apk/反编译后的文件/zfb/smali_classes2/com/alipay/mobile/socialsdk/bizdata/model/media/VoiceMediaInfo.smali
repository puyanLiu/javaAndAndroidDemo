.class public Lcom/alipay/mobile/socialsdk/bizdata/model/media/VoiceMediaInfo;
.super Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;
.source "VoiceMediaInfo.java"


# instance fields
.field private l:I

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VoiceMediaInfo;->v:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VoiceMediaInfo;->l:I

    .line 19
    return-void
.end method


# virtual methods
.method public getL()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VoiceMediaInfo;->l:I

    return v0
.end method

.method public getV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VoiceMediaInfo;->v:Ljava/lang/String;

    return-object v0
.end method

.method public setL(I)V
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VoiceMediaInfo;->l:I

    .line 35
    return-void
.end method

.method public setV(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VoiceMediaInfo;->v:Ljava/lang/String;

    .line 27
    return-void
.end method
