.class public Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;
.super Ljava/lang/Object;
.source "Options.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    daoClass = Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/OptionsDatabaseDaoImpl;
.end annotation


# static fields
.field public static final OPTION_SUCCESS:I = 0x0

.field public static final OPTION_UPLOADING:I = 0x1

.field public static final OPTION_UPLOAD_FAILED:I = 0x2

.field public static final TYPE_LIKE:I = 0x2

.field public static final TYPE_REPLY:I = 0x1

.field public static final TYPE_REWARD:I = 0x3

.field public static final TYPE_UNKNOWN:I = 0x0

.field private static final serialVersionUID:J = -0x65f006d0a69bc452L


# instance fields
.field public amount:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public bizType:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public clientOptionId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        id = true
    .end annotation
.end field

.field public content:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public createTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
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

.field public fromType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public lastModifyTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public optionId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public shortDesc:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public state:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public toOptionId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public toUserId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public toUserLoginId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public userId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public userLoginId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->state:I

    .line 212
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->state:I

    .line 215
    iput p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->bizType:I

    .line 216
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;)V
    .locals 2

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->state:I

    .line 183
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;->optionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->optionId:Ljava/lang/String;

    .line 184
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;->clientOptionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->clientOptionId:Ljava/lang/String;

    .line 185
    iget-wide v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;->createTime:J

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->createTime:J

    .line 186
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->bizType:I

    .line 187
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;->feedId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->feedId:Ljava/lang/String;

    .line 188
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->userId:Ljava/lang/String;

    .line 190
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->userLoginId:Ljava/lang/String;

    .line 192
    :cond_0
    iget-wide v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;->lastModifyTime:J

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->lastModifyTime:J

    .line 193
    iget v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;->state:I

    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->state:I

    .line 194
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;)V
    .locals 2

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->state:I

    .line 163
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->optionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->optionId:Ljava/lang/String;

    .line 164
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->clientOptionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->clientOptionId:Ljava/lang/String;

    .line 165
    iget-wide v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->createTime:J

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->createTime:J

    .line 166
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->bizType:I

    .line 167
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->feedId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->feedId:Ljava/lang/String;

    .line 168
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->userId:Ljava/lang/String;

    .line 170
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->userLoginId:Ljava/lang/String;

    .line 172
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->toAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->toAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->toUserId:Ljava/lang/String;

    .line 174
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->toAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->toUserLoginId:Ljava/lang/String;

    .line 176
    :cond_1
    iget-wide v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->lastModifyTime:J

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->lastModifyTime:J

    .line 177
    iget v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->state:I

    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->state:I

    .line 178
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->commentMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->content:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;)V
    .locals 2

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->state:I

    .line 197
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;->optionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->optionId:Ljava/lang/String;

    .line 198
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;->clientOptionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->clientOptionId:Ljava/lang/String;

    .line 199
    iget-wide v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;->createTime:J

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->createTime:J

    .line 200
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->bizType:I

    .line 201
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;->feedId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->feedId:Ljava/lang/String;

    .line 202
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->userId:Ljava/lang/String;

    .line 204
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->userLoginId:Ljava/lang/String;

    .line 206
    :cond_0
    iget-wide v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;->lastModifyTime:J

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->lastModifyTime:J

    .line 207
    iget v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;->state:I

    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->state:I

    .line 208
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;->rwAmount:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->amount:Ljava/lang/String;

    .line 209
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 138
    if-ne p0, p1, :cond_0

    .line 139
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    .line 142
    :cond_0
    if-nez p1, :cond_1

    .line 143
    const/4 v0, 0x0

    goto :goto_0

    .line 146
    :cond_1
    instance-of v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->clientOptionId:Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->clientOptionId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->clientOptionId:Ljava/lang/String;

    check-cast p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->clientOptionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 150
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->clientOptionId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 159
    return v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->clientOptionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
