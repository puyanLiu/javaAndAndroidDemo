.class public Lanetwork/channel/aidl/ParcelableRequest;
.super Ljava/lang/Object;
.source "ParcelableRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lanetwork/channel/aidl/ParcelableRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:J

.field private b:Lanetwork/channel/Request;

.field private c:Lanetwork/channel/aidl/ParcelableBodyHandler;

.field private d:I

.field private e:Ljava/net/URL;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Lorg/apache/http/ProtocolVersion;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lanetwork/channel/Param;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lanetwork/channel/aidl/ssl/ParcelableSslCallback;

.field private m:Lanetwork/channel/aidl/ParcelablePersistentRetryHandler;

.field private n:J

.field private o:I

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 217
    new-instance v0, Lanetwork/channel/aidl/m;

    invoke-direct {v0}, Lanetwork/channel/aidl/m;-><init>()V

    sput-object v0, Lanetwork/channel/aidl/ParcelableRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->h:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->k:Ljava/util/List;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->l:Lanetwork/channel/aidl/ssl/ParcelableSslCallback;

    .line 77
    return-void
.end method

.method public constructor <init>(Lanetwork/channel/Request;)V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->h:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->k:Ljava/util/List;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->l:Lanetwork/channel/aidl/ssl/ParcelableSslCallback;

    .line 43
    iput-object p1, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/Request;

    .line 44
    if-eqz p1, :cond_2

    .line 45
    invoke-interface {p1}, Lanetwork/channel/Request;->getRetryTime()I

    move-result v0

    iput v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->d:I

    .line 46
    invoke-interface {p1}, Lanetwork/channel/Request;->getURI()Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 48
    :try_start_0
    invoke-interface {p1}, Lanetwork/channel/Request;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->e:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    invoke-interface {p1}, Lanetwork/channel/Request;->getCharset()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->f:Ljava/lang/String;

    .line 57
    invoke-interface {p1}, Lanetwork/channel/Request;->getFollowRedirects()Z

    move-result v0

    iput-boolean v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->g:Z

    .line 58
    invoke-interface {p1}, Lanetwork/channel/Request;->getHeaders()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->h:Ljava/util/List;

    .line 59
    invoke-interface {p1}, Lanetwork/channel/Request;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->i:Ljava/lang/String;

    .line 60
    invoke-interface {p1}, Lanetwork/channel/Request;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->j:Lorg/apache/http/ProtocolVersion;

    .line 61
    invoke-interface {p1}, Lanetwork/channel/Request;->getParams()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->k:Ljava/util/List;

    .line 62
    new-instance v0, Lanetwork/channel/aidl/adapter/ParcelableBodyHandlerWrapper;

    invoke-interface {p1}, Lanetwork/channel/Request;->getBodyHandler()Lanetwork/channel/IBodyHandler;

    move-result-object v1

    invoke-direct {v0, v1}, Lanetwork/channel/aidl/adapter/ParcelableBodyHandlerWrapper;-><init>(Lanetwork/channel/IBodyHandler;)V

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->c:Lanetwork/channel/aidl/ParcelableBodyHandler;

    .line 64
    invoke-interface {p1}, Lanetwork/channel/Request;->getSslCallback()Lanetwork/channel/ssl/ISslCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Lanetwork/channel/aidl/ssl/adapter/ParcelableSslCallbackWrapper;

    invoke-interface {p1}, Lanetwork/channel/Request;->getSslCallback()Lanetwork/channel/ssl/ISslCallback;

    move-result-object v1

    invoke-direct {v0, v1}, Lanetwork/channel/aidl/ssl/adapter/ParcelableSslCallbackWrapper;-><init>(Lanetwork/channel/ssl/ISslCallback;)V

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->l:Lanetwork/channel/aidl/ssl/ParcelableSslCallback;

    .line 67
    :cond_0
    invoke-interface {p1}, Lanetwork/channel/Request;->getRetryCallback()Lanetwork/channel/persistent/IRetryCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    new-instance v0, Lanetwork/channel/aidl/adapter/ParcelablePersistentRetryCallbackWrapper;

    invoke-interface {p1}, Lanetwork/channel/Request;->getRetryCallback()Lanetwork/channel/persistent/IRetryCallback;

    move-result-object v1

    invoke-direct {v0, v1}, Lanetwork/channel/aidl/adapter/ParcelablePersistentRetryCallbackWrapper;-><init>(Lanetwork/channel/persistent/IRetryCallback;)V

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->m:Lanetwork/channel/aidl/ParcelablePersistentRetryHandler;

    .line 70
    :cond_1
    invoke-interface {p1}, Lanetwork/channel/Request;->getHeartInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->n:J

    .line 72
    invoke-interface {p1}, Lanetwork/channel/Request;->getConnectTimeout()I

    move-result v0

    iput v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->o:I

    .line 73
    invoke-interface {p1}, Lanetwork/channel/Request;->getReadTimeout()I

    move-result v0

    iput v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->p:I

    .line 75
    :cond_2
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const-string/jumbo v1, "ParcelableRequest"

    const-string/jumbo v2, "getURI().toURL()"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 53
    :cond_3
    invoke-interface {p1}, Lanetwork/channel/Request;->getURL()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->e:Ljava/net/URL;

    goto :goto_0
.end method

.method public static a(Landroid/os/Parcel;)Lanetwork/channel/aidl/ParcelableRequest;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x0

    .line 152
    new-instance v3, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-direct {v3}, Lanetwork/channel/aidl/ParcelableRequest;-><init>()V

    .line 155
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v3, Lanetwork/channel/aidl/ParcelableRequest;->d:I

    .line 158
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, v3, Lanetwork/channel/aidl/ParcelableRequest;->e:Ljava/net/URL;

    .line 160
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lanetwork/channel/aidl/ParcelableRequest;->f:Ljava/lang/String;

    .line 162
    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 163
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 164
    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    iput-boolean v0, v3, Lanetwork/channel/aidl/ParcelableRequest;->g:Z

    .line 166
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lanetwork/channel/aidl/ParcelableRequest;->i:Ljava/lang/String;

    .line 168
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 169
    const-class v0, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    move v2, v1

    .line 170
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 172
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    if-eqz v0, :cond_0

    .line 174
    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_0

    array-length v5, v0

    if-lt v5, v8, :cond_0

    .line 176
    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const/4 v6, 0x0

    aget-object v6, v0, v6

    const/4 v7, 0x1

    aget-object v0, v0, v7

    invoke-direct {v5, v6, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, v3, Lanetwork/channel/aidl/ParcelableRequest;->h:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 183
    :cond_1
    const-class v0, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    .line 184
    if-eqz v2, :cond_3

    .line 185
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 186
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    if-eqz v0, :cond_2

    .line 188
    const-string/jumbo v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_2

    array-length v4, v0

    if-lt v4, v8, :cond_2

    .line 190
    iget-object v4, v3, Lanetwork/channel/aidl/ParcelableRequest;->k:Ljava/util/List;

    new-instance v5, Lanetwork/channel/entity/StringParam;

    const/4 v6, 0x0

    aget-object v6, v0, v6

    const/4 v7, 0x1

    aget-object v0, v0, v7

    invoke-direct {v5, v6, v0}, Lanetwork/channel/entity/StringParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 196
    :cond_3
    invoke-virtual {p0}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/apache/http/ProtocolVersion;

    iput-object v0, v3, Lanetwork/channel/aidl/ParcelableRequest;->j:Lorg/apache/http/ProtocolVersion;

    .line 198
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lanetwork/channel/aidl/adapter/ParcelableBodyHandlerWrapper;->a(Landroid/os/IBinder;)Lanetwork/channel/aidl/ParcelableBodyHandler;

    move-result-object v0

    iput-object v0, v3, Lanetwork/channel/aidl/ParcelableRequest;->c:Lanetwork/channel/aidl/ParcelableBodyHandler;

    .line 200
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lanetwork/channel/aidl/ssl/adapter/ParcelableSslCallbackWrapper;->a(Landroid/os/IBinder;)Lanetwork/channel/aidl/ssl/ParcelableSslCallback;

    move-result-object v0

    iput-object v0, v3, Lanetwork/channel/aidl/ParcelableRequest;->l:Lanetwork/channel/aidl/ssl/ParcelableSslCallback;

    .line 202
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lanetwork/channel/aidl/adapter/ParcelablePersistentRetryCallbackWrapper;->a(Landroid/os/IBinder;)Lanetwork/channel/aidl/ParcelablePersistentRetryHandler;

    move-result-object v0

    iput-object v0, v3, Lanetwork/channel/aidl/ParcelableRequest;->m:Lanetwork/channel/aidl/ParcelablePersistentRetryHandler;

    .line 204
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v3, Lanetwork/channel/aidl/ParcelableRequest;->n:J

    .line 206
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v3, Lanetwork/channel/aidl/ParcelableRequest;->a:J

    .line 208
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v3, Lanetwork/channel/aidl/ParcelableRequest;->o:I

    .line 210
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v3, Lanetwork/channel/aidl/ParcelableRequest;->p:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_2
    return-object v3

    .line 211
    :catch_0
    move-exception v0

    .line 212
    const-string/jumbo v1, "ParcelableRequest"

    const-string/jumbo v2, "[readFromParcel]"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 250
    iput p1, p0, Lanetwork/channel/aidl/ParcelableRequest;->d:I

    .line 251
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/net/URL;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->e:Ljava/net/URL;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->g:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Lanetwork/channel/aidl/ParcelableBodyHandler;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->c:Lanetwork/channel/aidl/ParcelableBodyHandler;

    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->d:I

    return v0
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lanetwork/channel/Param;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->k:Ljava/util/List;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->h:Ljava/util/List;

    return-object v0
.end method

.method public final i()Lanetwork/channel/aidl/ssl/ParcelableSslCallback;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->l:Lanetwork/channel/aidl/ssl/ParcelableSslCallback;

    return-object v0
.end method

.method public final j()Lanetwork/channel/aidl/ParcelablePersistentRetryHandler;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->m:Lanetwork/channel/aidl/ParcelablePersistentRetryHandler;

    return-object v0
.end method

.method public final k()J
    .locals 2

    .prologue
    .line 269
    iget-wide v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->n:J

    return-wide v0
.end method

.method public final l()V
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->l:Lanetwork/channel/aidl/ssl/ParcelableSslCallback;

    .line 273
    return-void
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->o:I

    return v0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->p:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 86
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/Request;

    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 91
    :cond_0
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/Request;

    invoke-interface {v0}, Lanetwork/channel/Request;->getRetryTime()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    const-string/jumbo v0, ""

    .line 94
    iget-object v3, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/Request;

    invoke-interface {v3}, Lanetwork/channel/Request;->getURI()Ljava/net/URI;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 95
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/Request;

    invoke-interface {v0}, Lanetwork/channel/Request;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_1
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/Request;

    invoke-interface {v0}, Lanetwork/channel/Request;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v3, 0x0

    iget-object v4, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/Request;

    invoke-interface {v4}, Lanetwork/channel/Request;->getFollowRedirects()Z

    move-result v4

    aput-boolean v4, v0, v3

    .line 104
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 106
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/Request;

    invoke-interface {v0}, Lanetwork/channel/Request;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 109
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/Request;

    invoke-interface {v0}, Lanetwork/channel/Request;->getHeaders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    move v3, v2

    .line 110
    :goto_2
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/Request;

    invoke-interface {v0}, Lanetwork/channel/Request;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 111
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/Request;

    invoke-interface {v0}, Lanetwork/channel/Request;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/Request;

    invoke-interface {v0}, Lanetwork/channel/Request;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/Request;

    invoke-interface {v0}, Lanetwork/channel/Request;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 96
    :cond_3
    iget-object v3, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/Request;

    invoke-interface {v3}, Lanetwork/channel/Request;->getURL()Ljava/net/URL;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 97
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/Request;

    invoke-interface {v0}, Lanetwork/channel/Request;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 116
    :cond_4
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 118
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/Request;

    invoke-interface {v0}, Lanetwork/channel/Request;->getParams()Ljava/util/List;

    move-result-object v3

    .line 119
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 120
    if-eqz v3, :cond_6

    .line 121
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 122
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/Param;

    .line 123
    if-eqz v0, :cond_5

    .line 124
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lanetwork/channel/Param;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lanetwork/channel/Param;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 128
    :cond_6
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 130
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/Request;

    invoke-interface {v0}, Lanetwork/channel/Request;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 132
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->c:Lanetwork/channel/aidl/ParcelableBodyHandler;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->c:Lanetwork/channel/aidl/ParcelableBodyHandler;

    invoke-interface {v0}, Lanetwork/channel/aidl/ParcelableBodyHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 134
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->l:Lanetwork/channel/aidl/ssl/ParcelableSslCallback;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->l:Lanetwork/channel/aidl/ssl/ParcelableSslCallback;

    invoke-interface {v0}, Lanetwork/channel/aidl/ssl/ParcelableSslCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 136
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->m:Lanetwork/channel/aidl/ParcelablePersistentRetryHandler;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->m:Lanetwork/channel/aidl/ParcelablePersistentRetryHandler;

    invoke-interface {v0}, Lanetwork/channel/aidl/ParcelablePersistentRetryHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 138
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/Request;

    invoke-interface {v0}, Lanetwork/channel/Request;->getHeartInterval()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 140
    iget-wide v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 142
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/Request;

    invoke-interface {v0}, Lanetwork/channel/Request;->getConnectTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->b:Lanetwork/channel/Request;

    invoke-interface {v0}, Lanetwork/channel/Request;->getReadTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    const-string/jumbo v1, "ParcelableRequest"

    const-string/jumbo v2, "[writeToParcel]"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    .line 132
    goto :goto_4

    :cond_8
    move-object v0, v1

    .line 134
    goto :goto_5

    :cond_9
    move-object v0, v1

    .line 136
    goto :goto_6
.end method
