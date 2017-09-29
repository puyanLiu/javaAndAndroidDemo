.class public Lcom/fido/android/framework/agent/Fido$Response;
.super Ljava/lang/Object;
.source "Fido.java"


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mRegisteredUsers:Ljava/util/List;

.field private mRegistrationID:Ljava/lang/String;

.field private mResponseParams:Ljava/lang/String;

.field private mStatus:Lcom/fido/android/framework/agent/api/ResultType;

.field private mSyncedRegTokens:Ljava/util/List;


# direct methods
.method private constructor <init>(Lcom/fido/android/framework/agent/api/ResultType;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/fido/android/framework/agent/Fido$Response;->mMessage:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fido/android/framework/agent/Fido$Response;->mRegisteredUsers:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fido/android/framework/agent/Fido$Response;->mSyncedRegTokens:Ljava/util/List;

    .line 66
    iput-object v3, p0, Lcom/fido/android/framework/agent/Fido$Response;->mRegistrationID:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/fido/android/framework/agent/Fido$Response;->mStatus:Lcom/fido/android/framework/agent/api/ResultType;

    .line 72
    :try_start_0
    invoke-static {}, Lcom/fido/android/framework/types/JsonObjectAdapter;->GsonBuilder()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 73
    if-eqz p2, :cond_0

    .line 74
    const-class v0, Lcom/fido/android/framework/agent/api/AgentAPI;

    invoke-virtual {v1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fido/android/framework/agent/api/AgentAPI;

    .line 75
    iget-object v2, v0, Lcom/fido/android/framework/agent/api/AgentAPI;->Out:Lcom/google/gson/JsonObject;

    if-eqz v2, :cond_0

    .line 76
    iget-object v0, v0, Lcom/fido/android/framework/agent/api/AgentAPI;->Out:Lcom/google/gson/JsonObject;

    const-class v2, Lcom/fido/android/framework/agent/api/OstpOut;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fido/android/framework/agent/api/OstpOut;

    .line 77
    iget-object v1, v0, Lcom/fido/android/framework/agent/api/OstpOut;->response:Ljava/lang/String;

    iput-object v1, p0, Lcom/fido/android/framework/agent/Fido$Response;->mMessage:Ljava/lang/String;

    .line 78
    iget-object v1, v0, Lcom/fido/android/framework/agent/api/OstpOut;->registeredUsers:Ljava/util/List;

    iput-object v1, p0, Lcom/fido/android/framework/agent/Fido$Response;->mRegisteredUsers:Ljava/util/List;

    .line 79
    iget-object v1, v0, Lcom/fido/android/framework/agent/api/OstpOut;->syncedRegTokens:Ljava/util/List;

    iput-object v1, p0, Lcom/fido/android/framework/agent/Fido$Response;->mSyncedRegTokens:Ljava/util/List;

    .line 80
    iget-object v1, v0, Lcom/fido/android/framework/agent/api/OstpOut;->responseParams:Ljava/lang/String;

    iput-object v1, p0, Lcom/fido/android/framework/agent/Fido$Response;->mResponseParams:Ljava/lang/String;

    .line 81
    iget-object v0, v0, Lcom/fido/android/framework/agent/api/OstpOut;->registrationID:Ljava/lang/String;

    iput-object v0, p0, Lcom/fido/android/framework/agent/Fido$Response;->mRegistrationID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    new-instance v0, Lcom/fido/android/framework/agent/Fido$ServiceException;

    const-string/jumbo v1, "Failed to parse response"

    invoke-direct {v0, v1, v3}, Lcom/fido/android/framework/agent/Fido$ServiceException;-><init>(Ljava/lang/String;Lcom/fido/android/framework/agent/Fido$1;)V

    throw v0
.end method

.method synthetic constructor <init>(Lcom/fido/android/framework/agent/api/ResultType;Ljava/lang/String;Lcom/fido/android/framework/agent/Fido$1;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/fido/android/framework/agent/Fido$Response;-><init>(Lcom/fido/android/framework/agent/api/ResultType;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getRegistrationID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido$Response;->mRegistrationID:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido$Response;->mResponseParams:Ljava/lang/String;

    return-object v0
.end method

.method public isRegistered()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 127
    iget-object v1, p0, Lcom/fido/android/framework/agent/Fido$Response;->mRegisteredUsers:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fido/android/framework/agent/Fido$Response;->mRegisteredUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido$Response;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public registeredUserList()Ljava/util/List;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido$Response;->mRegisteredUsers:Ljava/util/List;

    return-object v0
.end method

.method public setResponseParams(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/fido/android/framework/agent/Fido$Response;->mResponseParams:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public status()Lcom/fido/android/framework/agent/api/ResultType;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido$Response;->mStatus:Lcom/fido/android/framework/agent/api/ResultType;

    return-object v0
.end method

.method public syncedRegTokens()Ljava/util/List;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido$Response;->mSyncedRegTokens:Ljava/util/List;

    return-object v0
.end method
