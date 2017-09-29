.class public final Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;
.super Lcom/squareup/wire/Message;


# static fields
.field public static final DEFAULT_DIPLAYTIPS:Ljava/lang/String; = ""

.field public static final DEFAULT_MEMO:Ljava/lang/String; = ""

.field public static final DEFAULT_MSGID:Ljava/lang/Long;

.field public static final DEFAULT_MSGINDEX:Ljava/lang/String; = ""

.field public static final DEFAULT_RESULTSTATUS:Ljava/lang/Integer;

.field public static final TAG_DIPLAYTIPS:I = 0x4

.field public static final TAG_MEMO:I = 0x2

.field public static final TAG_MSGID:I = 0x3

.field public static final TAG_MSGINDEX:I = 0x5

.field public static final TAG_RESULTSTATUS:I = 0x1


# instance fields
.field public diplayTips:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public memo:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public msgId:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public msgIndex:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public resultStatus:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x6d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->DEFAULT_RESULTSTATUS:Ljava/lang/Integer;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->DEFAULT_MSGID:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->resultStatus:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->resultStatus:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->memo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->memo:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->msgId:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->msgId:Ljava/lang/Long;

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->diplayTips:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->diplayTips:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->msgIndex:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->msgIndex:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->resultStatus:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->memo:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->memo:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->msgId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->msgId:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->diplayTips:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->diplayTips:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->msgIndex:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->msgIndex:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->resultStatus:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->memo:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    iput-object p2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->msgId:Ljava/lang/Long;

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->diplayTips:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->msgIndex:Ljava/lang/String;

    goto :goto_0

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

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->resultStatus:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->memo:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->memo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->msgId:Ljava/lang/Long;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->msgId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->diplayTips:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->diplayTips:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->msgIndex:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->msgIndex:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->hashCode:I

    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3
.end method
