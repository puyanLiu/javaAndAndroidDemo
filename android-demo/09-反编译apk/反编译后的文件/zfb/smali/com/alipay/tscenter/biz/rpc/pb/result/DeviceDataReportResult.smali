.class public final Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;
.super Lcom/squareup/wire/Message;


# static fields
.field public static final DEFAULT_APDID:Ljava/lang/String; = ""

.field public static final DEFAULT_APPLISTCMDVER:Ljava/lang/String; = ""

.field public static final DEFAULT_CURRENTTIME:Ljava/lang/String; = ""

.field public static final DEFAULT_DRMSWITCH:Ljava/lang/String; = ""

.field public static final DEFAULT_RESULTCODE:Ljava/lang/String; = ""

.field public static final DEFAULT_RPCVERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_SUCCESS:Ljava/lang/Boolean;

.field public static final DEFAULT_TOKEN:Ljava/lang/String; = ""

.field public static final TAG_APDID:I = 0x3

.field public static final TAG_APPLISTCMDVER:I = 0x8

.field public static final TAG_CURRENTTIME:I = 0x5

.field public static final TAG_DRMSWITCH:I = 0x7

.field public static final TAG_RESULTCODE:I = 0x2

.field public static final TAG_RPCVERSION:I = 0x6

.field public static final TAG_SUCCESS:I = 0x1

.field public static final TAG_TOKEN:I = 0x4


# instance fields
.field public apdid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public appListCmdVer:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public currentTime:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public drmSwitch:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public resultCode:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public rpcVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public success:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public token:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->DEFAULT_SUCCESS:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->success:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->success:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->resultCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->resultCode:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->apdid:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->apdid:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->token:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->token:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->currentTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->currentTime:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->rpcVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->rpcVersion:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->drmSwitch:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->drmSwitch:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->appListCmdVer:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->appListCmdVer:Ljava/lang/String;

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
    instance-of v2, p1, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;

    iget-object v2, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->success:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->success:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->resultCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->resultCode:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->apdid:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->apdid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->token:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->token:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->currentTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->currentTime:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->rpcVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->rpcVersion:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->drmSwitch:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->drmSwitch:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->appListCmdVer:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->appListCmdVer:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->success:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->resultCode:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->apdid:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->token:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->currentTime:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->rpcVersion:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->drmSwitch:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->appListCmdVer:Ljava/lang/String;

    goto :goto_0

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
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->success:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->success:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->resultCode:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->apdid:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->apdid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->token:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->currentTime:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->currentTime:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->rpcVersion:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->rpcVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->drmSwitch:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->drmSwitch:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->appListCmdVer:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->appListCmdVer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->hashCode:I

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

    :cond_6
    move v0, v1

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_5

    :cond_8
    move v0, v1

    goto :goto_6
.end method
