.class public Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;
.super Ljava/lang/Object;
.source "Feeds.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    daoClass = Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/FeedsDatabaseDaoImpl;
.end annotation


# static fields
.field public static final FEED_PLOADING:I = 0x1

.field public static final FEED_SUCCESS:I = 0x0

.field public static final FEED_UPLOAD_FAILED:I = 0x2

.field public static final serialVersionUID:J = 0x3c74c024485875e3L


# instance fields
.field public clientFeedId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        id = true
    .end annotation
.end field

.field public createTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
    .end annotation
.end field

.field public errorCode:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public extend:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public feedId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
    .end annotation
.end field

.field private infoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;",
            ">;"
        }
    .end annotation
.end field

.field public lastModifyTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public link:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public loginId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public mediacontent:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public rewardNum:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public sceneAddress:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public sceneId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public sceneTitle:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public shortDesc:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public spreadRange:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public state:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public text:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public totalRewards:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public userId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->state:I

    .line 20
    return-void
.end method

.method public static parse(Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;
    .locals 3

    .prologue
    .line 190
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;-><init>()V

    .line 191
    iget-object v1, p0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;->clientFeedId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    .line 192
    iget-wide v1, p0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;->createTime:J

    iput-wide v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->createTime:J

    .line 193
    iget-object v1, p0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;->type:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->type:Ljava/lang/String;

    .line 194
    iget-object v1, p0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;->mediaList:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->mediacontent:Ljava/lang/String;

    .line 195
    iget-object v1, p0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;->content:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->text:Ljava/lang/String;

    .line 196
    const/4 v1, 0x1

    iput v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->state:I

    .line 197
    iget-object v1, p0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;->aid:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->sceneId:Ljava/lang/String;

    .line 198
    iget-object v1, p0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;->activityName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->sceneTitle:Ljava/lang/String;

    .line 199
    iget-object v1, p0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;->activityAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->sceneAddress:Ljava/lang/String;

    .line 200
    iget v1, p0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;->spreadRange:I

    iput v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->spreadRange:I

    .line 201
    iget-object v1, p0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;->userId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->userId:Ljava/lang/String;

    .line 202
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 152
    if-ne p0, p1, :cond_0

    .line 153
    const/4 v0, 0x1

    .line 164
    :goto_0
    return v0

    .line 156
    :cond_0
    if-nez p1, :cond_1

    .line 157
    const/4 v0, 0x0

    goto :goto_0

    .line 160
    :cond_1
    instance-of v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    check-cast p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 164
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getContent()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->infoList:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->mediacontent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->mediacontent:Ljava/lang/String;

    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->infoList:Ljava/util/List;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->infoList:Ljava/util/List;

    return-object v0
.end method

.method public getDisplaySceneStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->sceneTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->sceneTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 173
    return v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public parseMediaList()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->mediacontent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->mediacontent:Ljava/lang/String;

    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->infoList:Ljava/util/List;

    .line 187
    :cond_0
    return-void
.end method

.method public toRPCInfo()Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;
    .locals 3

    .prologue
    .line 206
    new-instance v0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;

    invoke-direct {v0}, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;-><init>()V

    .line 207
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;->clientFeedId:Ljava/lang/String;

    .line 208
    iget-wide v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->createTime:J

    iput-wide v1, v0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;->createTime:J

    .line 209
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->type:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;->type:Ljava/lang/String;

    .line 210
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->mediacontent:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;->mediaList:Ljava/lang/String;

    .line 211
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->text:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;->content:Ljava/lang/String;

    .line 212
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->sceneId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;->aid:Ljava/lang/String;

    .line 213
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->sceneAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;->activityAddress:Ljava/lang/String;

    .line 214
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->sceneTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;->activityName:Ljava/lang/String;

    .line 215
    iget v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->spreadRange:I

    iput v1, v0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;->spreadRange:I

    .line 216
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->userId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;->userId:Ljava/lang/String;

    .line 217
    return-object v0
.end method
