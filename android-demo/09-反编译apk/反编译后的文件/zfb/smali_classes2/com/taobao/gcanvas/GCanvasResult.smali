.class public Lcom/taobao/gcanvas/GCanvasResult;
.super Ljava/lang/Object;
.source "GCanvasResult.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallbackId:Ljava/lang/String;

.field private mChangingThreads:I

.field private mFinished:Z

.field private mResultCode:Lcom/taobao/gcanvas/GCanvasResult$ResultCode;

.field private mResultListener:Lcom/taobao/gcanvas/GCanvasResult$Listener;

.field private mResultMessage:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/taobao/gcanvas/GCanvasResult$ResultCode;->NO_RESULT:Lcom/taobao/gcanvas/GCanvasResult$ResultCode;

    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvasResult;->mResultCode:Lcom/taobao/gcanvas/GCanvasResult$ResultCode;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvasResult;->mActivity:Landroid/app/Activity;

    .line 43
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvasResult;->mCallbackId:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/taobao/gcanvas/GCanvasResult$Listener;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/taobao/gcanvas/GCanvasResult$ResultCode;->NO_RESULT:Lcom/taobao/gcanvas/GCanvasResult$ResultCode;

    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvasResult;->mResultCode:Lcom/taobao/gcanvas/GCanvasResult$ResultCode;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvasResult;->mActivity:Landroid/app/Activity;

    .line 47
    iput-object p1, p0, Lcom/taobao/gcanvas/GCanvasResult;->mCallbackId:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/taobao/gcanvas/GCanvasResult;->mResultListener:Lcom/taobao/gcanvas/GCanvasResult$Listener;

    .line 49
    return-void
.end method


# virtual methods
.method public calljs(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/taobao/gcanvas/GCanvasResult;->onCallJS(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public error()V
    .locals 2

    .prologue
    .line 139
    sget-object v0, Lcom/taobao/gcanvas/GCanvasResult$ResultCode;->ERROR:Lcom/taobao/gcanvas/GCanvasResult$ResultCode;

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/taobao/gcanvas/GCanvasResult;->setResult(Lcom/taobao/gcanvas/GCanvasResult$ResultCode;Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/taobao/gcanvas/GCanvasResult$ResultCode;->ERROR:Lcom/taobao/gcanvas/GCanvasResult$ResultCode;

    invoke-virtual {p0, v0, p1}, Lcom/taobao/gcanvas/GCanvasResult;->setResult(Lcom/taobao/gcanvas/GCanvasResult$ResultCode;Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/taobao/gcanvas/GCanvasResult$ResultCode;->ERROR:Lcom/taobao/gcanvas/GCanvasResult$ResultCode;

    invoke-virtual {p0, v0, p1}, Lcom/taobao/gcanvas/GCanvasResult;->setResult(Lcom/taobao/gcanvas/GCanvasResult$ResultCode;Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method public error(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lcom/taobao/gcanvas/GCanvasResult$ResultCode;->ERROR:Lcom/taobao/gcanvas/GCanvasResult$ResultCode;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/taobao/gcanvas/GCanvasResult;->setResult(Lcom/taobao/gcanvas/GCanvasResult$ResultCode;Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasResult;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getCallbackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasResult;->mCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()Lcom/taobao/gcanvas/GCanvasResult$ResultCode;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasResult;->mResultCode:Lcom/taobao/gcanvas/GCanvasResult$ResultCode;

    return-object v0
.end method

.method public getResultMessage()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasResult;->mResultMessage:Ljava/lang/Object;

    return-object v0
.end method

.method public isChangingThreads()Z
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/taobao/gcanvas/GCanvasResult;->mChangingThreads:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/taobao/gcanvas/GCanvasResult;->mFinished:Z

    return v0
.end method

.method protected onCallJS(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasResult;->mResultListener:Lcom/taobao/gcanvas/GCanvasResult$Listener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasResult;->mResultListener:Lcom/taobao/gcanvas/GCanvasResult$Listener;

    invoke-interface {v0, p1}, Lcom/taobao/gcanvas/GCanvasResult$Listener;->onCallJS(Ljava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method

.method protected onResult(Lcom/taobao/gcanvas/GCanvasResult$ResultCode;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasResult;->mResultListener:Lcom/taobao/gcanvas/GCanvasResult$Listener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasResult;->mResultListener:Lcom/taobao/gcanvas/GCanvasResult$Listener;

    invoke-interface {v0, p0, p1, p2}, Lcom/taobao/gcanvas/GCanvasResult$Listener;->onResult(Lcom/taobao/gcanvas/GCanvasResult;Lcom/taobao/gcanvas/GCanvasResult$ResultCode;Ljava/lang/Object;)V

    .line 81
    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/taobao/gcanvas/GCanvasResult;->mActivity:Landroid/app/Activity;

    .line 37
    return-void
.end method

.method public setResult(Lcom/taobao/gcanvas/GCanvasResult$ResultCode;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/taobao/gcanvas/GCanvasResult;->mResultCode:Lcom/taobao/gcanvas/GCanvasResult$ResultCode;

    .line 73
    iput-object p2, p0, Lcom/taobao/gcanvas/GCanvasResult;->mResultMessage:Ljava/lang/Object;

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/taobao/gcanvas/GCanvasResult;->onResult(Lcom/taobao/gcanvas/GCanvasResult$ResultCode;Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public success()V
    .locals 2

    .prologue
    .line 135
    sget-object v0, Lcom/taobao/gcanvas/GCanvasResult$ResultCode;->OK:Lcom/taobao/gcanvas/GCanvasResult$ResultCode;

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/taobao/gcanvas/GCanvasResult;->setResult(Lcom/taobao/gcanvas/GCanvasResult$ResultCode;Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public success(F)V
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lcom/taobao/gcanvas/GCanvasResult$ResultCode;->OK:Lcom/taobao/gcanvas/GCanvasResult$ResultCode;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/taobao/gcanvas/GCanvasResult;->setResult(Lcom/taobao/gcanvas/GCanvasResult$ResultCode;Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public success(I)V
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/taobao/gcanvas/GCanvasResult$ResultCode;->OK:Lcom/taobao/gcanvas/GCanvasResult$ResultCode;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/taobao/gcanvas/GCanvasResult;->setResult(Lcom/taobao/gcanvas/GCanvasResult$ResultCode;Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/taobao/gcanvas/GCanvasResult$ResultCode;->OK:Lcom/taobao/gcanvas/GCanvasResult$ResultCode;

    invoke-virtual {p0, v0, p1}, Lcom/taobao/gcanvas/GCanvasResult;->setResult(Lcom/taobao/gcanvas/GCanvasResult$ResultCode;Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/taobao/gcanvas/GCanvasResult$ResultCode;->OK:Lcom/taobao/gcanvas/GCanvasResult$ResultCode;

    invoke-virtual {p0, v0, p1}, Lcom/taobao/gcanvas/GCanvasResult;->setResult(Lcom/taobao/gcanvas/GCanvasResult$ResultCode;Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public success(Lorg/json/JSONArray;)V
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/taobao/gcanvas/GCanvasResult$ResultCode;->OK:Lcom/taobao/gcanvas/GCanvasResult$ResultCode;

    invoke-virtual {p0, v0, p1}, Lcom/taobao/gcanvas/GCanvasResult;->setResult(Lcom/taobao/gcanvas/GCanvasResult$ResultCode;Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/taobao/gcanvas/GCanvasResult$ResultCode;->OK:Lcom/taobao/gcanvas/GCanvasResult$ResultCode;

    invoke-virtual {p0, v0, p1}, Lcom/taobao/gcanvas/GCanvasResult;->setResult(Lcom/taobao/gcanvas/GCanvasResult$ResultCode;Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public success(Z)V
    .locals 2

    .prologue
    .line 119
    sget-object v0, Lcom/taobao/gcanvas/GCanvasResult$ResultCode;->OK:Lcom/taobao/gcanvas/GCanvasResult$ResultCode;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/taobao/gcanvas/GCanvasResult;->setResult(Lcom/taobao/gcanvas/GCanvasResult$ResultCode;Ljava/lang/Object;)V

    .line 120
    return-void
.end method
