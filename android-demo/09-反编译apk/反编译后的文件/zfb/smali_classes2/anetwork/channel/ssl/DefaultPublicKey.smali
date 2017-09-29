.class public Lanetwork/channel/ssl/DefaultPublicKey;
.super Ljava/lang/Object;
.source "DefaultPublicKey.java"


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static c:Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "b5367979ed47a013d3166eec69be7f8ce8e9a960f5c82aefd6f378d58ab3e70d202e5b393ab70172140ae0159a4db7618a932d01b41e48db55cc89b97e184e089951e77c72a0d26903eb4b6f0ef2f39de6ef8ae9b2cf375853589ca756554c800710d9e390d9430311fc26dec37771ec23178e0a7063746aa8ccce41f5ed09ff"

    invoke-static {v0}, Lanetwork/channel/util/HexUtil;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lanetwork/channel/ssl/DefaultPublicKey;->a:[B

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lanetwork/channel/ssl/DefaultPublicKey;->b:[B

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lanetwork/channel/ssl/DefaultPublicKey;->c:Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;

    return-void

    .line 34
    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lanetwork/channel/http/NetworkSdkSetting;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string/jumbo v1, "ANet.DefaultPublicKey"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;

    sget-object v1, Lanetwork/channel/ssl/DefaultPublicKey;->a:[B

    sget-object v2, Lanetwork/channel/ssl/DefaultPublicKey;->b:[B

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;-><init>([B[BI)V

    sput-object v0, Lanetwork/channel/ssl/DefaultPublicKey;->c:Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;

    .line 58
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lanetwork/channel/ssl/DefaultPublicKey;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lanetwork/channel/ssl/DefaultPublicKey;
    .locals 2

    .prologue
    .line 68
    const-class v0, Lanetwork/channel/ssl/DefaultPublicKey;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lanetwork/channel/ssl/a;->a()Lanetwork/channel/ssl/DefaultPublicKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final declared-synchronized b()Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;
    .locals 1

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    sget-object v0, Lanetwork/channel/ssl/DefaultPublicKey;->c:Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
