.class public final Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;
.super Lcom/squareup/wire/Message;


# static fields
.field public static final DEFAULT_APPID:Ljava/lang/String; = ""

.field public static final DEFAULT_BIZMEMO:Ljava/lang/String; = ""

.field public static final DEFAULT_BIZREMIND:Ljava/lang/String; = ""

.field public static final DEFAULT_BIZTYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_CLIENTMSGID:Ljava/lang/Long;

.field public static final DEFAULT_EXTENDPARAM:Ljava/lang/String; = ""

.field public static final DEFAULT_HINTUSERS:Ljava/lang/String; = ""

.field public static final DEFAULT_LINK:Ljava/lang/String; = ""

.field public static final DEFAULT_RECEIVERID:Ljava/lang/String; = ""

.field public static final DEFAULT_RECEIVERUSERTYPE:Ljava/lang/Integer;

.field public static final DEFAULT_SCENE:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

.field public static final DEFAULT_TEMPLATECODE:Ljava/lang/Integer;

.field public static final DEFAULT_TEMPLATEDATA:Ljava/lang/String; = ""

.field public static final TAG_APPID:I = 0x6

.field public static final TAG_BIZMEMO:I = 0xc

.field public static final TAG_BIZREMIND:I = 0xd

.field public static final TAG_BIZTYPE:I = 0x9

.field public static final TAG_CLIENTMSGID:I = 0x1

.field public static final TAG_EXTENDPARAM:I = 0xb

.field public static final TAG_HINTUSERS:I = 0x7

.field public static final TAG_LINK:I = 0x8

.field public static final TAG_RECEIVERID:I = 0x2

.field public static final TAG_RECEIVERUSERTYPE:I = 0x3

.field public static final TAG_SCENE:I = 0xa

.field public static final TAG_TEMPLATECODE:I = 0x4

.field public static final TAG_TEMPLATEDATA:I = 0x5


# instance fields
.field public appId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public bizMemo:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public bizRemind:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public bizType:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public clientMsgId:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public extendParam:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public hintUsers:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public link:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public receiverId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public receiverUserType:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public scene:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public templateCode:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public templateData:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->DEFAULT_CLIENTMSGID:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->DEFAULT_RECEIVERUSERTYPE:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->DEFAULT_TEMPLATECODE:Ljava/lang/Integer;

    sget-object v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;->CHAT:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    sput-object v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->DEFAULT_SCENE:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->clientMsgId:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->clientMsgId:Ljava/lang/Long;

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverId:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverUserType:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverUserType:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateCode:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateCode:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateData:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateData:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->appId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->appId:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->hintUsers:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->hintUsers:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->link:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->link:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizType:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->scene:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->scene:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->extendParam:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->extendParam:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizMemo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizMemo:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizRemind:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizRemind:Ljava/lang/String;

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
    instance-of v2, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->clientMsgId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->clientMsgId:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverUserType:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverUserType:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateCode:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateCode:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateData:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateData:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->appId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->appId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->hintUsers:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->hintUsers:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->link:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->link:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizType:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizType:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->scene:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->scene:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->extendParam:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->extendParam:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizMemo:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizMemo:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizRemind:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizRemind:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Ljava/lang/Long;

    iput-object p2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->clientMsgId:Ljava/lang/Long;

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverId:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverUserType:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateCode:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateData:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->appId:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->hintUsers:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->link:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizType:Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    check-cast p2, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    iput-object p2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->scene:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    goto :goto_0

    :pswitch_a
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->extendParam:Ljava/lang/String;

    goto :goto_0

    :pswitch_b
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizMemo:Ljava/lang/String;

    goto :goto_0

    :pswitch_c
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizRemind:Ljava/lang/String;

    goto :goto_0

    nop

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
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->clientMsgId:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->clientMsgId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverId:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverUserType:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverUserType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateCode:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateData:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->appId:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->appId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->hintUsers:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->hintUsers:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->link:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->link:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizType:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->scene:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->scene:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    invoke-virtual {v0}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->extendParam:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->extendParam:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizMemo:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizMemo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizRemind:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizRemind:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->hashCode:I

    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto/16 :goto_1

    :cond_4
    move v0, v1

    goto/16 :goto_2

    :cond_5
    move v0, v1

    goto/16 :goto_3

    :cond_6
    move v0, v1

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_5

    :cond_8
    move v0, v1

    goto :goto_6

    :cond_9
    move v0, v1

    goto :goto_7

    :cond_a
    move v0, v1

    goto :goto_8

    :cond_b
    move v0, v1

    goto :goto_9

    :cond_c
    move v0, v1

    goto :goto_a

    :cond_d
    move v0, v1

    goto :goto_b
.end method
