.class public final Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;
.super Lcom/squareup/wire/Message;


# static fields
.field public static final DEFAULT_ASSIGNEDCHANNEL:Ljava/lang/String; = ""

.field public static final DEFAULT_BARCODEINDEX:Ljava/lang/String; = ""

.field public static final DEFAULT_CARDNO:Ljava/lang/String; = ""

.field public static final DEFAULT_CHANNELINDEX:Ljava/lang/String; = ""

.field public static final DEFAULT_CHANNELNAME:Ljava/lang/String; = ""

.field public static final DEFAULT_CHANNELTYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_ENABLE:Ljava/lang/Boolean;

.field public static final DEFAULT_INDEX:Ljava/lang/Integer;

.field public static final DEFAULT_PREFIXNAME:Ljava/lang/String; = ""

.field public static final DEFAULT_SIGNID:Ljava/lang/String; = ""

.field public static final DEFAULT_SUFFIXNAME:Ljava/lang/String; = ""

.field public static final TAG_ASSIGNEDCHANNEL:I = 0x9

.field public static final TAG_BARCODEINDEX:I = 0x6

.field public static final TAG_CARDNO:I = 0x5

.field public static final TAG_CHANNELINDEX:I = 0xa

.field public static final TAG_CHANNELNAME:I = 0x4

.field public static final TAG_CHANNELTYPE:I = 0x8

.field public static final TAG_ENABLE:I = 0xb

.field public static final TAG_INDEX:I = 0x1

.field public static final TAG_PREFIXNAME:I = 0x2

.field public static final TAG_SIGNID:I = 0x7

.field public static final TAG_SUFFIXNAME:I = 0x3


# instance fields
.field public assignedChannel:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public barCodeIndex:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public cardNo:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public channelIndex:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public channelName:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public channelType:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public enable:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public index:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public prefixName:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public signId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public suffixName:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->DEFAULT_INDEX:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->DEFAULT_ENABLE:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->index:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->index:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->prefixName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->prefixName:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->suffixName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->suffixName:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->channelName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->channelName:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->cardNo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->cardNo:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->barCodeIndex:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->barCodeIndex:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->signId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->signId:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->channelType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->channelType:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->assignedChannel:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->assignedChannel:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->channelIndex:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->channelIndex:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->enable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->enable:Ljava/lang/Boolean;

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
    instance-of v2, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;

    iget-object v2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->index:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->index:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->prefixName:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->prefixName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->suffixName:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->suffixName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->channelName:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->channelName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->cardNo:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->cardNo:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->barCodeIndex:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->barCodeIndex:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->signId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->signId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->channelType:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->channelType:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->assignedChannel:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->assignedChannel:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->channelIndex:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->channelIndex:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->enable:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->enable:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->index:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->prefixName:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->suffixName:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->channelName:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->cardNo:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->barCodeIndex:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->signId:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->channelType:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->assignedChannel:Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->channelIndex:Ljava/lang/String;

    goto :goto_0

    :pswitch_a
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->enable:Ljava/lang/Boolean;

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
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->index:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->index:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->prefixName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->prefixName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->suffixName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->suffixName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->channelName:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->channelName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->cardNo:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->cardNo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->barCodeIndex:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->barCodeIndex:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->signId:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->signId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->channelType:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->channelType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->assignedChannel:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->assignedChannel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->channelIndex:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->channelIndex:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->enable:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->enable:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->hashCode:I

    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3

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
.end method
