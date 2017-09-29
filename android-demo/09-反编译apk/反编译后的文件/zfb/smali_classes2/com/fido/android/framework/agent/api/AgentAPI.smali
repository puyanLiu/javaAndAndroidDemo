.class public Lcom/fido/android/framework/agent/api/AgentAPI;
.super Ljava/lang/Object;
.source "AgentAPI.java"


# instance fields
.field public ChannelData:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public In:Lcom/google/gson/JsonObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public Op:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public Origin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public Out:Lcom/google/gson/JsonObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public Result:Lcom/fido/android/framework/agent/api/ResultType;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public ServerInfo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public V:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string/jumbo v0, "0.1"

    iput-object v0, p0, Lcom/fido/android/framework/agent/api/AgentAPI;->V:Ljava/lang/String;

    return-void
.end method
