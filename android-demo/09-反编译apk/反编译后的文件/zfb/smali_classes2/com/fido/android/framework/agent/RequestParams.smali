.class public Lcom/fido/android/framework/agent/RequestParams;
.super Ljava/lang/Object;
.source "RequestParams.java"


# instance fields
.field private mCheckPolicyOnly:Z

.field private mConnectedHandler:Landroid/os/Handler;

.field private mOrigin:Ljava/lang/String;

.field private mTlsData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v1, p0, Lcom/fido/android/framework/agent/RequestParams;->mOrigin:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/fido/android/framework/agent/RequestParams;->mTlsData:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fido/android/framework/agent/RequestParams;->mCheckPolicyOnly:Z

    .line 13
    iput-object v1, p0, Lcom/fido/android/framework/agent/RequestParams;->mConnectedHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getFidoJS(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 114
    const-string/jumbo v1, "mfacsdk"

    invoke-static {p0, v1}, Lcom/fido/android/framework/agent/RequestParams;->readRawFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_0
    const-string/jumbo v1, "injectedfido"

    invoke-static {p0, v1}, Lcom/fido/android/framework/agent/RequestParams;->readRawFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    if-eqz v1, :cond_1

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    :cond_1
    return-object v0
.end method

.method private static readRawFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 129
    .line 132
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "raw"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 134
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v3, v1, [B

    .line 135
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    .line 136
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 141
    if-eqz v2, :cond_0

    .line 142
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    move-object v0, v1

    .line 148
    :cond_1
    :goto_0
    return-object v0

    .line 138
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 141
    :goto_1
    if-eqz v1, :cond_1

    .line 142
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 145
    :catch_1
    move-exception v1

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 141
    :goto_2
    if-eqz v2, :cond_2

    .line 142
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 145
    :cond_2
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 140
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 138
    :catch_4
    move-exception v1

    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public getCheckPolicyOnly()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/fido/android/framework/agent/RequestParams;->mCheckPolicyOnly:Z

    return v0
.end method

.method public getConnectedHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/fido/android/framework/agent/RequestParams;->mConnectedHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fido/android/framework/agent/RequestParams;->mOrigin:Ljava/lang/String;

    return-object v0
.end method

.method public getTlsData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/fido/android/framework/agent/RequestParams;->mTlsData:Ljava/lang/String;

    return-object v0
.end method

.method public removeLastSlash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 51
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 52
    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 55
    :cond_0
    return-object p1
.end method

.method public setCheckPolicyOnly(Z)V
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/fido/android/framework/agent/RequestParams;->mCheckPolicyOnly:Z

    .line 92
    return-void
.end method

.method public setConnectedHandler(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/fido/android/framework/agent/RequestParams;->mConnectedHandler:Landroid/os/Handler;

    .line 105
    return-void
.end method

.method public setOrigin(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/fido/android/framework/agent/RequestParams;->truncateURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fido/android/framework/agent/RequestParams;->mOrigin:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setTlsData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/fido/android/framework/agent/RequestParams;->mTlsData:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public truncateURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 35
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 36
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 39
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fido/android/framework/agent/RequestParams;->removeLastSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
