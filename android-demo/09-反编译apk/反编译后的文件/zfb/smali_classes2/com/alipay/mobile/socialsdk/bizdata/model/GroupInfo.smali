.class public Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;
.super Ljava/lang/Object;
.source "GroupInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    daoClass = Lcom/alipay/mobile/socialsdk/bizdata/db/GroupInfoDatabaseDaoImpl;
.end annotation


# static fields
.field public static final DEFAULT_GROUP_NAME:Ljava/lang/String; = "\u7fa4\u804a"

.field public static final MEMBER_SPLIT:Ljava/lang/String; = ","

.field public static final serialVersionUID:J = 0x5465e7331ee8d3f3L


# instance fields
.field public addTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public aliasGroupName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public bizType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public createTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public groupId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "_id"
        id = true
    .end annotation
.end field

.field public groupImg:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public groupMemberIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected groupMembersString:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        useGetSet = true
    .end annotation
.end field

.field public groupName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field protected groupPermissionStr:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        useGetSet = true
    .end annotation
.end field

.field public groupPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isContact:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public isCurrentUserQuit:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public mIsIncremental:Z

.field public mIsNickIngroupChanged:Z

.field public masterUserId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public memberAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;"
        }
    .end annotation
.end field

.field public nickInGroup:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public notDisturb:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public openInvSwitch:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public showGroupNickName:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public threshold:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public top:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public version:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->mIsIncremental:Z

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->memberAccounts:Ljava/util/List;

    .line 213
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->mIsIncremental:Z

    .line 217
    iget-object v0, p2, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->config:Lcom/alipay/mobilechat/biz/group/rpc/response/PersonalGroupConfig;

    iget-object v1, p2, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->permissions:Ljava/util/List;

    invoke-virtual {p0, p2, v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->initGroupBreif(Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;Lcom/alipay/mobilechat/biz/group/rpc/response/PersonalGroupConfig;Ljava/util/List;)V

    .line 218
    iget-object v0, p2, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->memberInfos:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->memberInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->memberInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->memberInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->memberAccounts:Ljava/util/List;

    .line 221
    iget-object v0, p2, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->memberInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    :goto_1
    return-void

    .line 221
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;

    .line 222
    iget-object v2, v0, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->userId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 223
    iget-object v2, v0, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->groupNickName:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->nickInGroup:Ljava/lang/String;

    .line 224
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->mIsNickIngroupChanged:Z

    .line 226
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    iget-object v3, v0, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->userId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    new-instance v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>()V

    .line 228
    iget-object v3, v0, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->userId:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    .line 229
    iget-object v3, v0, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->loginId:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    .line 230
    iget-object v3, v0, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->realName:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    .line 231
    iget-object v3, v0, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->gender:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->gender:Ljava/lang/String;

    .line 232
    iget-object v3, v0, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->headImg:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->headImageUrl:Ljava/lang/String;

    .line 233
    iget-object v3, v0, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->groupNickName:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->groupNickName:Ljava/lang/String;

    .line 234
    iget-object v3, v0, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->nickName:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    .line 235
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getDisplayName()Ljava/lang/String;

    .line 236
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->memberAccounts:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    if-eqz p3, :cond_0

    iget-object v2, v0, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->groupNickName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 239
    new-instance v2, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;

    invoke-direct {v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;-><init>()V

    .line 240
    const-string/jumbo v3, "3"

    iput-object v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->mimeType:Ljava/lang/String;

    .line 241
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->data1:Ljava/lang/String;

    .line 242
    iget-object v3, v0, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->userId:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->data2:Ljava/lang/String;

    .line 243
    iget-object v0, v0, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->groupNickName:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->data3:Ljava/lang/String;

    .line 244
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 248
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->memberAccounts:Ljava/util/List;

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    goto :goto_1
.end method

.method public static filterOffUtf8Mb4(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 278
    const-string/jumbo v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 279
    array-length v0, v2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 280
    const/4 v0, 0x0

    .line 281
    :cond_0
    :goto_0
    array-length v1, v2

    if-lt v0, v1, :cond_1

    .line 300
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 301
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 282
    :cond_1
    aget-byte v1, v2, v0

    .line 283
    if-lez v1, :cond_2

    .line 284
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move v0, v1

    .line 285
    goto :goto_0

    .line 287
    :cond_2
    add-int/lit16 v1, v1, 0x100

    int-to-short v1, v1

    .line 288
    xor-int/lit16 v4, v1, 0xc0

    shr-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_3

    .line 289
    const/4 v1, 0x2

    invoke-virtual {v3, v2, v0, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 290
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 292
    :cond_3
    xor-int/lit16 v4, v1, 0xe0

    shr-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_4

    .line 293
    const/4 v1, 0x3

    invoke-virtual {v3, v2, v0, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 294
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 296
    :cond_4
    xor-int/lit16 v1, v1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_0

    .line 297
    add-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method


# virtual methods
.method public deleteOneMember(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->memberAccounts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    iget-object v1, p1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 200
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 313
    if-ne p0, p1, :cond_0

    .line 314
    const/4 v0, 0x1

    .line 325
    :goto_0
    return v0

    .line 317
    :cond_0
    if-nez p1, :cond_1

    .line 318
    const/4 v0, 0x0

    goto :goto_0

    .line 321
    :cond_1
    instance-of v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    check-cast p1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 325
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->aliasGroupName:Ljava/lang/String;

    .line 308
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getGroupMembersString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const-string/jumbo v0, ","

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getGroupPermissionStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupPermissions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    const-string/jumbo v0, ","

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupPermissions:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 331
    .line 334
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 333
    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 335
    return v0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public initGroupBreif(Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;Lcom/alipay/mobilechat/biz/group/rpc/response/PersonalGroupConfig;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;",
            "Lcom/alipay/mobilechat/biz/group/rpc/response/PersonalGroupConfig;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GroupInfo"

    const-string/jumbo v2, "initGroupBreif"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->groupId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    .line 256
    iget-object v0, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->groupName:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupName:Ljava/lang/String;

    .line 258
    const-string/jumbo v0, "\u7fa4\u804a"

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->aliasGroupName:Ljava/lang/String;

    .line 259
    iget-object v0, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->groupImg:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupImg:Ljava/lang/String;

    .line 260
    iget-object v0, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->gmtCreate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->createTime:J

    .line 261
    iget-object v0, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->masterUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->masterUserId:Ljava/lang/String;

    .line 262
    iget-object v0, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->bizType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->bizType:Ljava/lang/String;

    .line 263
    iget-wide v0, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->version:J

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->version:J

    .line 264
    iget v0, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->threshold:I

    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->threshold:I

    .line 266
    if-eqz p2, :cond_0

    .line 267
    iget-boolean v0, p2, Lcom/alipay/mobilechat/biz/group/rpc/response/PersonalGroupConfig;->saveInContacts:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->isContact:Z

    .line 268
    iget-boolean v0, p2, Lcom/alipay/mobilechat/biz/group/rpc/response/PersonalGroupConfig;->quiet:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->notDisturb:Z

    .line 269
    iget-boolean v0, p2, Lcom/alipay/mobilechat/biz/group/rpc/response/PersonalGroupConfig;->top:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->top:Z

    .line 270
    iget-boolean v0, p2, Lcom/alipay/mobilechat/biz/group/rpc/response/PersonalGroupConfig;->showGroupNickName:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->showGroupNickName:Z

    .line 271
    iget-boolean v0, p2, Lcom/alipay/mobilechat/biz/group/rpc/response/PersonalGroupConfig;->openInvSwitch:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->openInvSwitch:Z

    .line 272
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GroupInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "initGroupBreif the openInvSwitch="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->openInvSwitch:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_0
    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupPermissions:Ljava/util/List;

    .line 275
    return-void

    .line 256
    :cond_1
    iget-object v0, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->groupName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setGroupMembersString(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMembersString:Ljava/lang/String;

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    .line 86
    :cond_0
    return-void

    .line 79
    :cond_1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMembersString:Ljava/lang/String;

    .line 80
    const-string/jumbo v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    .line 82
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 83
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setGroupPermissionStr(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupPermissionStr:Ljava/lang/String;

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupPermissions:Ljava/util/List;

    .line 176
    :cond_0
    return-void

    .line 169
    :cond_1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupPermissionStr:Ljava/lang/String;

    .line 170
    const-string/jumbo v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 171
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupPermissions:Ljava/util/List;

    .line 172
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 173
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupPermissions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
