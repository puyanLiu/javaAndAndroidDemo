.class public final Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;
.super Lcom/squareup/wire/Message;
.source "FollowListResult.java"


# static fields
.field public static final DEFAULT_DYNAMICCONFIGUID:Ljava/lang/String; = ""

.field public static final DEFAULT_FOLLOWACCOUNTLIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_PAGENUM:Ljava/lang/Integer;

.field public static final DEFAULT_PAGESIZE:Ljava/lang/Integer;

.field public static final DEFAULT_RESULTCODE:Ljava/lang/Integer;

.field public static final DEFAULT_RESULTMSG:Ljava/lang/String; = ""

.field public static final DEFAULT_ROWCOUNT:Ljava/lang/Integer;

.field public static final DEFAULT_SUCCESS:Ljava/lang/Boolean;

.field public static final DEFAULT_SYNCMAXOPLOGID:Ljava/lang/String; = ""

.field public static final DEFAULT_USERID:Ljava/lang/String; = ""

.field public static final TAG_DYNAMICCONFIGUID:I = 0x1

.field public static final TAG_FOLLOWACCOUNTLIST:I = 0x4

.field public static final TAG_PAGENUM:I = 0x5

.field public static final TAG_PAGESIZE:I = 0x6

.field public static final TAG_RESULTCODE:I = 0x9

.field public static final TAG_RESULTMSG:I = 0xa

.field public static final TAG_ROWCOUNT:I = 0x7

.field public static final TAG_SUCCESS:I = 0x8

.field public static final TAG_SYNCMAXOPLOGID:I = 0x3

.field public static final TAG_USERID:I = 0x2


# instance fields
.field public dynamicConfigUid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public followAccountList:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;",
            ">;"
        }
    .end annotation
.end field

.field public pageNum:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public pageSize:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public resultCode:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public resultMsg:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public rowCount:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public success:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public syncMaxOpLogId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public userId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->DEFAULT_FOLLOWACCOUNTLIST:Ljava/util/List;

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->DEFAULT_PAGENUM:Ljava/lang/Integer;

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->DEFAULT_PAGESIZE:Ljava/lang/Integer;

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->DEFAULT_ROWCOUNT:Ljava/lang/Integer;

    .line 35
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->DEFAULT_SUCCESS:Ljava/lang/Boolean;

    .line 36
    const/16 v0, 0xc8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->DEFAULT_RESULTCODE:Ljava/lang/Integer;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 71
    if-nez p1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->dynamicConfigUid:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->dynamicConfigUid:Ljava/lang/String;

    .line 73
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->userId:Ljava/lang/String;

    .line 74
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->syncMaxOpLogId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->syncMaxOpLogId:Ljava/lang/String;

    .line 75
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->followAccountList:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->followAccountList:Ljava/util/List;

    .line 76
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->pageNum:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->pageNum:Ljava/lang/Integer;

    .line 77
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->pageSize:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->pageSize:Ljava/lang/Integer;

    .line 78
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->rowCount:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->rowCount:Ljava/lang/Integer;

    .line 79
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->success:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->success:Ljava/lang/Boolean;

    .line 80
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->resultCode:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->resultCode:Ljava/lang/Integer;

    .line 81
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->resultMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->resultMsg:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 126
    if-ne p1, p0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 127
    :cond_1
    instance-of v2, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 128
    :cond_2
    check-cast p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;

    .line 129
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->dynamicConfigUid:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->dynamicConfigUid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 130
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->userId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 131
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->syncMaxOpLogId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->syncMaxOpLogId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 132
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->followAccountList:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->followAccountList:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 133
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->pageNum:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->pageNum:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 134
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->pageSize:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->pageSize:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 135
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->rowCount:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->rowCount:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->success:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->success:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 137
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->resultCode:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->resultCode:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 138
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->resultMsg:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->resultMsg:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 129
    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;
    .locals 1

    .prologue
    .line 88
    packed-switch p1, :pswitch_data_0

    .line 118
    :goto_0
    return-object p0

    .line 90
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->dynamicConfigUid:Ljava/lang/String;

    goto :goto_0

    .line 93
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->userId:Ljava/lang/String;

    goto :goto_0

    .line 96
    :pswitch_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->syncMaxOpLogId:Ljava/lang/String;

    goto :goto_0

    .line 99
    :pswitch_3
    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->followAccountList:Ljava/util/List;

    goto :goto_0

    .line 102
    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->pageNum:Ljava/lang/Integer;

    goto :goto_0

    .line 105
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->pageSize:Ljava/lang/Integer;

    goto :goto_0

    .line 108
    :pswitch_6
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->rowCount:Ljava/lang/Integer;

    goto :goto_0

    .line 111
    :pswitch_7
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->success:Ljava/lang/Boolean;

    goto :goto_0

    .line 114
    :pswitch_8
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->resultCode:Ljava/lang/Integer;

    goto :goto_0

    .line 117
    :pswitch_9
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->resultMsg:Ljava/lang/String;

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 143
    iget v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->hashCode:I

    .line 144
    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->dynamicConfigUid:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->dynamicConfigUid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 146
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->userId:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->userId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 147
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->syncMaxOpLogId:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->syncMaxOpLogId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 148
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->followAccountList:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->followAccountList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 149
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->pageNum:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->pageNum:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 150
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->pageSize:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->pageSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 151
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->rowCount:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->rowCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 152
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->success:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->success:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 153
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->resultCode:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->resultCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 154
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->resultMsg:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->resultMsg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 155
    iput v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->hashCode:I

    .line 157
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 145
    goto :goto_0

    :cond_3
    move v0, v1

    .line 146
    goto :goto_1

    :cond_4
    move v0, v1

    .line 147
    goto :goto_2

    .line 148
    :cond_5
    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    move v0, v1

    .line 149
    goto :goto_4

    :cond_7
    move v0, v1

    .line 150
    goto :goto_5

    :cond_8
    move v0, v1

    .line 151
    goto :goto_6

    :cond_9
    move v0, v1

    .line 152
    goto :goto_7

    :cond_a
    move v0, v1

    .line 153
    goto :goto_8
.end method
