.class public final Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;
.super Lcom/squareup/wire/Message;
.source "InitReturnMessage.java"


# static fields
.field public static final DEFAULT_CAN_RESEND:Ljava/lang/Boolean;

.field public static final DEFAULT_LINK_INFO_EXPIRE_TIME:Ljava/lang/Integer;

.field public static final DEFAULT_MEMO:Ljava/lang/String; = ""

.field public static final DEFAULT_OVER_LIMIT_INTERVAL:Ljava/lang/Integer;

.field public static final DEFAULT_RESULT_CODE:Ljava/lang/String; = ""

.field public static final TAG_CAN_RESEND:I = 0x5

.field public static final TAG_LINK_INFO_EXPIRE_TIME:I = 0x2

.field public static final TAG_MEMO:I = 0x4

.field public static final TAG_OVER_LIMIT_INTERVAL:I = 0x3

.field public static final TAG_RESULT_CODE:I = 0x1


# instance fields
.field public can_resend:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public link_info_expire_time:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public memo:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public over_limit_interval:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public result_code:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->DEFAULT_LINK_INFO_EXPIRE_TIME:Ljava/lang/Integer;

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->DEFAULT_OVER_LIMIT_INTERVAL:Ljava/lang/Integer;

    .line 24
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->DEFAULT_CAN_RESEND:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 55
    if-nez p1, :cond_0

    .line 61
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->result_code:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->result_code:Ljava/lang/String;

    .line 57
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->link_info_expire_time:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->link_info_expire_time:Ljava/lang/Integer;

    .line 58
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->over_limit_interval:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->over_limit_interval:Ljava/lang/Integer;

    .line 59
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->memo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->memo:Ljava/lang/String;

    .line 60
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->can_resend:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->can_resend:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 90
    if-ne p1, p0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    instance-of v2, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 92
    :cond_2
    check-cast p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;

    .line 93
    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->result_code:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->result_code:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->link_info_expire_time:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->link_info_expire_time:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->over_limit_interval:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->over_limit_interval:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->memo:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->memo:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->can_resend:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->can_resend:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;
    .locals 0

    .prologue
    .line 67
    packed-switch p1, :pswitch_data_0

    .line 82
    :goto_0
    return-object p0

    .line 69
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->result_code:Ljava/lang/String;

    goto :goto_0

    .line 72
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->link_info_expire_time:Ljava/lang/Integer;

    goto :goto_0

    .line 75
    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->over_limit_interval:Ljava/lang/Integer;

    goto :goto_0

    .line 78
    :pswitch_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->memo:Ljava/lang/String;

    goto :goto_0

    .line 81
    :pswitch_4
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->can_resend:Ljava/lang/Boolean;

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 102
    iget v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->hashCode:I

    .line 103
    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->result_code:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->result_code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 105
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->link_info_expire_time:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->link_info_expire_time:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 106
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->over_limit_interval:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->over_limit_interval:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 107
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->memo:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->memo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 108
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->can_resend:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->can_resend:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 109
    iput v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->hashCode:I

    .line 111
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 104
    goto :goto_0

    :cond_3
    move v0, v1

    .line 105
    goto :goto_1

    :cond_4
    move v0, v1

    .line 106
    goto :goto_2

    :cond_5
    move v0, v1

    .line 107
    goto :goto_3
.end method
