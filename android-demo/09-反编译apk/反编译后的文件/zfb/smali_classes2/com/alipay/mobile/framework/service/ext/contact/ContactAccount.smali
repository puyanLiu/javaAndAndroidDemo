.class public Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;
.super Ljava/lang/Object;
.source "ContactAccount.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    daoClass = Lcom/alipay/mobile/personalbase/db/ContactAccountDatabaseDaoImpl;
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x6e68a755d362e929L


# instance fields
.field public account:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public active:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public area:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public blacked:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public displayName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public extVersion:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public firstAlphaChar:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public firstChar:Ljava/lang/String;

.field public friendStatus:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public gender:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public groupMemberCount:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public groupNickName:Ljava/lang/String;

.field public headImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public hideRealName:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public isDelete:Z

.field public isFrom:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public isTop:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public lifeCircleType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field protected matchedPinyinStr:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public nickName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public notDisturb:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field protected phoneName:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public phoneNo:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public pinyinName:Ljava/lang/String;

.field public province:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public rawInputString:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public realNameStatus:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public realNameVisable:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public remarkName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public searchDesc:Ljava/lang/String;

.field public signature:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public source:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public sourceDec:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public starFriend:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public userGrade:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public userId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "_id"
        id = true
    .end annotation
.end field

.field public userType:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public version:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public zmCreditText:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public zmCreditUrl:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userType:Ljava/lang/String;

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->active:Z

    .line 322
    const-string/jumbo v0, "account"

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->isFrom:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;)V
    .locals 1

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userType:Ljava/lang/String;

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->active:Z

    .line 322
    const-string/jumbo v0, "account"

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->isFrom:Ljava/lang/String;

    .line 434
    iget-object v0, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    .line 435
    iget-object v0, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->loginId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    .line 436
    iget-object v0, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->realName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    .line 437
    iget-object v0, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->gender:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->gender:Ljava/lang/String;

    .line 438
    iget-object v0, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->headImg:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->headImageUrl:Ljava/lang/String;

    .line 439
    iget-object v0, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->nickName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    .line 440
    iget-object v0, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->groupNickName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->groupNickName:Ljava/lang/String;

    .line 441
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getDisplayName()Ljava/lang/String;

    .line 442
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    const-string/jumbo v1, "1"

    iput-object v1, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userType:Ljava/lang/String;

    .line 320
    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->active:Z

    .line 322
    const-string/jumbo v1, "account"

    iput-object v1, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->isFrom:Ljava/lang/String;

    .line 458
    iget-object v1, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->userId:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    .line 459
    iget-object v1, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->alipayNickName:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    .line 460
    iget-object v1, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->remarkName:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    .line 461
    iget-object v1, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->headPic:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->headImageUrl:Ljava/lang/String;

    .line 462
    iget-object v1, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->alreadyAdd:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->friendStatus:I

    .line 463
    return-void

    .line 462
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userType:Ljava/lang/String;

    .line 320
    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->active:Z

    .line 322
    const-string/jumbo v0, "account"

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->isFrom:Ljava/lang/String;

    .line 403
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    .line 404
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->nickName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    .line 405
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->realName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    .line 406
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->gender:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->gender:Ljava/lang/String;

    .line 407
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->headImg:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->headImageUrl:Ljava/lang/String;

    .line 408
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->signature:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->signature:Ljava/lang/String;

    .line 409
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->userGrade:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userGrade:Ljava/lang/String;

    .line 410
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->area:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->area:Ljava/lang/String;

    .line 411
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->province:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->province:Ljava/lang/String;

    .line 412
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->source:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->source:Ljava/lang/String;

    .line 413
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->sourceDec:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->sourceDec:Ljava/lang/String;

    .line 414
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->realNameStatus:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->realNameStatus:Ljava/lang/String;

    .line 415
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->remarkName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    .line 416
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->alipayAccount:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    .line 417
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->version:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->version:J

    .line 418
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->realFriend:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->friendStatus:I

    .line 419
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->blacked:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->blacked:Z

    .line 420
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->showRealName:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    iput-boolean v2, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->hideRealName:Z

    .line 421
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->starred:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->starFriend:Z

    .line 422
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->refuseDisturb:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->notDisturb:Z

    .line 423
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->extVersion:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->extVersion:J

    .line 424
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->putTop:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->isTop:Z

    .line 425
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->realNameVisable:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->realNameVisable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->realNameVisable:Z

    .line 428
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->zmCreditText:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->zmCreditText:Ljava/lang/String;

    .line 429
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->zmCreditUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->zmCreditUrl:Ljava/lang/String;

    .line 430
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getDisplayName()Ljava/lang/String;

    .line 431
    return-void

    .line 418
    :cond_1
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->stranger:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    move v2, v1

    .line 420
    goto :goto_1
.end method

.method public constructor <init>(Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;)V
    .locals 1

    .prologue
    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userType:Ljava/lang/String;

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->active:Z

    .line 322
    const-string/jumbo v0, "account"

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->isFrom:Ljava/lang/String;

    .line 364
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->initAliAccount(Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;)V

    .line 365
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 336
    if-ne p0, p1, :cond_0

    .line 337
    const/4 v0, 0x1

    .line 348
    :goto_0
    return v0

    .line 340
    :cond_0
    if-nez p1, :cond_1

    .line 341
    const/4 v0, 0x0

    goto :goto_0

    .line 344
    :cond_1
    instance-of v0, p1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    check-cast p1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, p1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 348
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->displayName:Ljava/lang/String;

    .line 221
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->displayName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 222
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->displayName:Ljava/lang/String;

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->displayName:Ljava/lang/String;

    return-object v0

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->groupNickName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->groupNickName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->displayName:Ljava/lang/String;

    goto :goto_0

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->displayName:Ljava/lang/String;

    goto :goto_0

    .line 218
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->displayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDisplayNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->groupNickName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->groupNickName:Ljava/lang/String;

    .line 239
    :goto_0
    if-nez v0, :cond_0

    .line 240
    const-string/jumbo v0, ""

    .line 242
    :cond_0
    return-object v0

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    goto :goto_0

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLoginId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameExceptGroupNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    .line 258
    :goto_0
    if-nez v0, :cond_0

    .line 259
    const-string/jumbo v0, ""

    .line 261
    :cond_0
    return-object v0

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    goto :goto_0

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->phoneNo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->phoneNo:Ljava/lang/String;

    .line 271
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 357
    return v0

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public initAliAccount(Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 368
    iget-object v0, p1, Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    .line 369
    iget-object v0, p1, Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;->nickName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    .line 370
    iget-object v0, p1, Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;->realName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    .line 371
    iget-object v0, p1, Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;->gender:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->gender:Ljava/lang/String;

    .line 372
    iget-object v0, p1, Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;->headImg:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->headImageUrl:Ljava/lang/String;

    .line 373
    iget-object v0, p1, Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;->signature:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->signature:Ljava/lang/String;

    .line 374
    iget-object v0, p1, Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;->userGrade:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userGrade:Ljava/lang/String;

    .line 375
    iget-object v0, p1, Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;->area:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->area:Ljava/lang/String;

    .line 376
    iget-object v0, p1, Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;->province:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->province:Ljava/lang/String;

    .line 377
    iget-object v0, p1, Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;->source:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->source:Ljava/lang/String;

    .line 378
    iget-object v0, p1, Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;->sourceDec:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->sourceDec:Ljava/lang/String;

    .line 379
    iget-object v0, p1, Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;->realNameStatus:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->realNameStatus:Ljava/lang/String;

    .line 380
    iget-object v0, p1, Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;->remarkName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    .line 381
    iget-object v0, p1, Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;->alipayAccount:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    .line 382
    iget-wide v3, p1, Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;->version:J

    iput-wide v3, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->version:J

    .line 383
    iget-boolean v0, p1, Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;->realFriend:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->friendStatus:I

    .line 384
    iget-boolean v0, p1, Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;->blacked:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->blacked:Z

    .line 385
    iget-boolean v0, p1, Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;->showRealName:Z

    if-eqz v0, :cond_2

    :goto_1
    iput-boolean v2, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->hideRealName:Z

    .line 386
    iget-boolean v0, p1, Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;->starred:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->starFriend:Z

    .line 387
    iget-boolean v0, p1, Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;->refuseDisturb:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->notDisturb:Z

    .line 388
    iget-wide v0, p1, Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;->extVersion:J

    iput-wide v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->extVersion:J

    .line 389
    iget-boolean v0, p1, Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;->putTop:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->isTop:Z

    .line 390
    iget-boolean v0, p1, Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;->realNameVisable:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->realNameVisable:Z

    .line 391
    iget-object v0, p1, Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;->zmCreditText:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->zmCreditText:Ljava/lang/String;

    .line 392
    iget-object v0, p1, Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;->zmCreditUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->zmCreditUrl:Ljava/lang/String;

    .line 393
    iget-object v0, p1, Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;->lifeCircleType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->lifeCircleType:Ljava/lang/String;

    .line 394
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getDisplayName()Ljava/lang/String;

    .line 395
    return-void

    .line 383
    :cond_0
    iget-boolean v0, p1, Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;->stranger:Z

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    move v2, v1

    .line 385
    goto :goto_1
.end method

.method public initByMobile(Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;)V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p1, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->mobileId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    .line 446
    iget-object v0, p1, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    .line 447
    iget-object v0, p1, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->headImageUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->headImageUrl:Ljava/lang/String;

    .line 448
    iget-object v0, p1, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->account:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    .line 449
    iget-object v0, p1, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->nickName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    .line 450
    iget-object v0, p1, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->remarkName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    .line 451
    iget v0, p1, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->friendStatus:I

    iput v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->friendStatus:I

    .line 452
    iget-object v0, p1, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->phoneNo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->phoneNo:Ljava/lang/String;

    .line 453
    iget-boolean v0, p1, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->showAsActive:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->active:Z

    .line 454
    return-void
.end method

.method public initPinyin(Lcom/alipay/mobile/personalbase/service/PinyinSearchService;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 466
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getDisplayName()Ljava/lang/String;

    .line 467
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->displayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    const-string/jumbo v0, "|"

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->matchedPinyinStr:Ljava/lang/String;

    .line 469
    const-string/jumbo v0, "#"

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->firstAlphaChar:Ljava/lang/String;

    .line 496
    :goto_0
    return-void

    .line 472
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 473
    :goto_1
    iget-object v3, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->displayName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 495
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->matchedPinyinStr:Ljava/lang/String;

    goto :goto_0

    .line 474
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->displayName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 475
    invoke-virtual {p1, v3}, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;->getPinyinStringArray(C)[Ljava/lang/String;

    move-result-object v4

    .line 476
    if-nez v4, :cond_5

    .line 477
    if-nez v0, :cond_4

    .line 478
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->firstAlphaChar:Ljava/lang/String;

    .line 479
    iget-object v3, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->firstAlphaChar:Ljava/lang/String;

    const-string/jumbo v4, "^[a-zA-Z].*$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 480
    const-string/jumbo v3, "#"

    iput-object v3, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->firstAlphaChar:Ljava/lang/String;

    .line 481
    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 483
    :cond_3
    iget-object v3, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->firstAlphaChar:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 486
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 489
    :cond_5
    aget-object v3, v4, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    if-nez v0, :cond_2

    .line 491
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->firstAlphaChar:Ljava/lang/String;

    goto :goto_2
.end method

.method public isAlipayAccount()Z
    .locals 2

    .prologue
    .line 285
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->friendStatus:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMyFriend()Z
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->friendStatus:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
