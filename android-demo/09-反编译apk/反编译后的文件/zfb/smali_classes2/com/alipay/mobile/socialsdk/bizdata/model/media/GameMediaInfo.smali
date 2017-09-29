.class public Lcom/alipay/mobile/socialsdk/bizdata/model/media/GameMediaInfo;
.super Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;
.source "GameMediaInfo.java"


# instance fields
.field public iconPath:Ljava/lang/String;

.field public userId:Ljava/lang/String;

.field public userName:Ljava/lang/String;

.field public v:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;-><init>()V

    .line 14
    iput p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/GameMediaInfo;->v:I

    .line 15
    return-void
.end method


# virtual methods
.method public getIconPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/GameMediaInfo;->iconPath:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/GameMediaInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/GameMediaInfo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getV()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/GameMediaInfo;->v:I

    return v0
.end method

.method public setIconPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/GameMediaInfo;->iconPath:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/GameMediaInfo;->userId:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/GameMediaInfo;->userName:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setV(I)V
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/GameMediaInfo;->v:I

    .line 27
    return-void
.end method
