.class public Lcom/alipay/mobile/h5container/api/H5Event$Builder;
.super Ljava/lang/Object;
.source "H5Event.java"


# instance fields
.field private action:Ljava/lang/String;

.field private callBack:Lcom/alipay/mobile/h5container/api/H5CallBack;

.field private canceled:Z

.field private error:Lcom/alipay/mobile/h5container/api/H5Event$Error;

.field private extra:Ljava/lang/Object;

.field private id:Ljava/lang/String;

.field private keepCallback:Z

.field private param:Lcom/alibaba/fastjson/JSONObject;

.field private target:Lcom/alipay/mobile/h5container/api/H5CoreNode;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "native_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->id:Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->NONE:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->error:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->keepCallback:Z

    .line 57
    const-string/jumbo v0, "call"

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->type:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 3

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "native_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->id:Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->NONE:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->error:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->keepCallback:Z

    .line 57
    const-string/jumbo v0, "call"

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->type:Ljava/lang/String;

    .line 65
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->access$0(Lcom/alipay/mobile/h5container/api/H5Event;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->error:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    .line 66
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->access$1(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->action:Ljava/lang/String;

    .line 67
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->access$2(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->id:Ljava/lang/String;

    .line 68
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->access$3(Lcom/alipay/mobile/h5container/api/H5Event;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->canceled:Z

    .line 69
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->access$4(Lcom/alipay/mobile/h5container/api/H5Event;)Lcom/alipay/mobile/h5container/api/H5CallBack;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->callBack:Lcom/alipay/mobile/h5container/api/H5CallBack;

    .line 70
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->access$5(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->type:Ljava/lang/String;

    .line 71
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->access$6(Lcom/alipay/mobile/h5container/api/H5Event;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->keepCallback:Z

    .line 72
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->access$7(Lcom/alipay/mobile/h5container/api/H5Event;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->param:Lcom/alibaba/fastjson/JSONObject;

    .line 73
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->access$8(Lcom/alipay/mobile/h5container/api/H5Event;)Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->target:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 74
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->access$9(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->extra:Ljava/lang/Object;

    .line 75
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Lcom/alipay/mobile/h5container/api/H5Event$Error;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->error:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->action:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->canceled:Z

    return v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Lcom/alipay/mobile/h5container/api/H5CallBack;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->callBack:Lcom/alipay/mobile/h5container/api/H5CallBack;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->keepCallback:Z

    return v0
.end method

.method static synthetic access$7(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->param:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method static synthetic access$8(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Lcom/alipay/mobile/h5container/api/H5CoreNode;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->target:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    return-object v0
.end method

.method static synthetic access$9(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->extra:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public action(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->action:Ljava/lang/String;

    .line 79
    return-object p0
.end method

.method public build()Lcom/alipay/mobile/h5container/api/H5Event;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Event;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/h5container/api/H5Event;-><init>(Lcom/alipay/mobile/h5container/api/H5Event$Builder;Lcom/alipay/mobile/h5container/api/H5Event;)V

    return-object v0
.end method

.method public callback(Lcom/alipay/mobile/h5container/api/H5CallBack;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->callBack:Lcom/alipay/mobile/h5container/api/H5CallBack;

    .line 104
    return-object p0
.end method

.method public cancel(Z)Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    .locals 0

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->canceled:Z

    .line 109
    return-object p0
.end method

.method public extra(Ljava/lang/Object;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->extra:Ljava/lang/Object;

    .line 119
    return-object p0
.end method

.method public id(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->id:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public keepCallback(Z)Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    .locals 0

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->keepCallback:Z

    .line 114
    return-object p0
.end method

.method public param(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->param:Lcom/alibaba/fastjson/JSONObject;

    .line 94
    return-object p0
.end method

.method public target(Lcom/alipay/mobile/h5container/api/H5CoreNode;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->target:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 84
    return-object p0
.end method

.method public type(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->type:Ljava/lang/String;

    .line 99
    return-object p0
.end method
