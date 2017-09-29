.class public Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;
.super Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;
.source "RecommendationFriend.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    daoClass = Lcom/alipay/mobile/socialsdk/bizdata/db/RecommendationFriendDatabaseDaoImpl;
.end annotation


# static fields
.field public static final MEMBER_SPLIT:Ljava/lang/String; = "\t"

.field public static final NAME_SPLIT:Ljava/lang/String; = "\u000c"

.field public static final serialVersionUID:J = 0x3fa4c8de0aa2d3L


# instance fields
.field public action:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public creator:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public from:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public mark:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        useGetSet = true
    .end annotation
.end field

.field public markList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public read:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public requestType:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public time:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
    .end annotation
.end field

.field public touch:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>()V

    .line 100
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 103
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->msg:Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>(Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;)V

    .line 104
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    .line 105
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->getRecommendationFriendById(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    move-result-object v1

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    if-eqz v1, :cond_0

    .line 108
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->markList:Ljava/util/List;

    .line 110
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 111
    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 113
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u000c"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "\u000c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->msg:Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;

    iget-object v2, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->markList:Ljava/util/List;

    .line 115
    iget-wide v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->time:J

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->time:J

    .line 116
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->msg:Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;

    iget-boolean v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;->creator:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->creator:Z

    .line 117
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->msg:Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;->sourceDec:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->sourceDec:Ljava/lang/String;

    .line 118
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->msg:Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;->source:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->source:Ljava/lang/String;

    .line 119
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->msg:Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;->action:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->action:Ljava/lang/String;

    .line 120
    iput-boolean v5, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->touch:Z

    .line 121
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->msg:Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>(Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;)V

    .line 129
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->msg:Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;->message:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->from:Ljava/lang/String;

    .line 130
    iget-wide v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->time:J

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->time:J

    .line 131
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->msg:Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;

    iget-boolean v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;->creator:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->creator:Z

    .line 132
    iput-boolean v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->touch:Z

    .line 133
    iput-boolean v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->hideRealName:Z

    .line 135
    return-void
.end method


# virtual methods
.method public getLatestMarkMsg()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->markList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const-string/jumbo v0, ""

    .line 142
    :goto_0
    return-object v0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->markList:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->markList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    const-string/jumbo v1, "\u000c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMark()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->markList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->markList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    const-string/jumbo v0, "\t"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->markList:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public setMark(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->mark:Ljava/lang/String;

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->markList:Ljava/util/List;

    .line 96
    :cond_0
    return-void

    .line 89
    :cond_1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->mark:Ljava/lang/String;

    .line 90
    const-string/jumbo v1, "\t"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->markList:Ljava/util/List;

    .line 92
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 93
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->markList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
