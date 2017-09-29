.class public Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;
.super Lcom/alipay/mcomment/common/service/facade/model/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public activityAddress:Ljava/lang/String;

.field public activityName:Ljava/lang/String;

.field public aid:Ljava/lang/String;

.field public clientFeedId:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public createTime:J

.field public ext:Ljava/util/Map;
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

.field public hints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public locationInfo:Lcom/alipay/mcomment/common/service/facade/model/LocationInfo;

.field public loginId:Ljava/lang/String;

.field public mediaList:Ljava/lang/String;

.field public modifyTime:J

.field public newsfeedId:Ljava/lang/String;

.field public spreadRange:I

.field public type:Ljava/lang/String;

.field public userId:Ljava/lang/String;

.field public visible:I

.field public visibleRange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public weight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mcomment/common/service/facade/model/ToString;-><init>()V

    return-void
.end method
