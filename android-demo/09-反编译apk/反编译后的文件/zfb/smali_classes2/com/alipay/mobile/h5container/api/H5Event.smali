.class public Lcom/alipay/mobile/h5container/api/H5Event;
.super Ljava/lang/Object;
.source "H5Event.java"


# static fields
.field public static final TYPE_CALL:Ljava/lang/String; = "call"

.field public static final TYPE_CALL_BACK:Ljava/lang/String; = "callback"


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
.method private constructor <init>(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->access$0(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->error:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    .line 129
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->access$1(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->action:Ljava/lang/String;

    .line 130
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->access$2(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->id:Ljava/lang/String;

    .line 131
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->access$3(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->canceled:Z

    .line 132
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->access$4(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Lcom/alipay/mobile/h5container/api/H5CallBack;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->callBack:Lcom/alipay/mobile/h5container/api/H5CallBack;

    .line 133
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->access$5(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->type:Ljava/lang/String;

    .line 134
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->access$6(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->keepCallback:Z

    .line 135
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->access$7(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->param:Lcom/alibaba/fastjson/JSONObject;

    .line 136
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->access$8(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->target:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 137
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->access$9(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->extra:Ljava/lang/Object;

    .line 138
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/h5container/api/H5Event$Builder;Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/alipay/mobile/h5container/api/H5Event;-><init>(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/h5container/api/H5Event;)Lcom/alipay/mobile/h5container/api/H5Event$Error;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->error:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->action:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/h5container/api/H5Event;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->canceled:Z

    return v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/h5container/api/H5Event;)Lcom/alipay/mobile/h5container/api/H5CallBack;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->callBack:Lcom/alipay/mobile/h5container/api/H5CallBack;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/mobile/h5container/api/H5Event;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->keepCallback:Z

    return v0
.end method

.method static synthetic access$7(Lcom/alipay/mobile/h5container/api/H5Event;)Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->param:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method static synthetic access$8(Lcom/alipay/mobile/h5container/api/H5Event;)Lcom/alipay/mobile/h5container/api/H5CoreNode;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->target:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    return-object v0
.end method

.method static synthetic access$9(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->extra:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->canceled:Z

    .line 162
    return-void
.end method

.method public final getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->action:Ljava/lang/String;

    return-object v0
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->target:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    instance-of v0, v0, Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 182
    :goto_0
    return-object v0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->target:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 178
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 179
    instance-of v2, v0, Landroid/app/Activity;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 180
    goto :goto_0

    .line 182
    :cond_1
    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method public getCallBack()Lcom/alipay/mobile/h5container/api/H5CallBack;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->callBack:Lcom/alipay/mobile/h5container/api/H5CallBack;

    return-object v0
.end method

.method public getExtra()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->extra:Ljava/lang/Object;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getParam()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->param:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public final getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->target:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final isCanceled()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->canceled:Z

    return v0
.end method

.method public isKeepCallback()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->keepCallback:Z

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Event;->action:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setCallBack(Lcom/alipay/mobile/h5container/api/H5CallBack;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Event;->callBack:Lcom/alipay/mobile/h5container/api/H5CallBack;

    .line 146
    return-void
.end method

.method public setExtra(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Event;->extra:Ljava/lang/Object;

    .line 219
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Event;->id:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setKeepCallback(Z)V
    .locals 0

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/alipay/mobile/h5container/api/H5Event;->keepCallback:Z

    .line 211
    return-void
.end method

.method public setParam(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Event;->param:Lcom/alibaba/fastjson/JSONObject;

    .line 199
    return-void
.end method

.method public final setTarget(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Event;->target:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 170
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Event;->type:Ljava/lang/String;

    .line 207
    return-void
.end method
