.class public Lcom/spdu/httpdns/NetworkManager;
.super Ljava/lang/Object;
.source "NetworkManager.java"


# static fields
.field public static a:J

.field public static b:I


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroid/content/BroadcastReceiver;

.field private e:Lcom/spdu/httpdns/NetworkType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/spdu/httpdns/NetworkManager;->a:J

    .line 19
    const/4 v0, 0x0

    sput v0, Lcom/spdu/httpdns/NetworkManager;->b:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/spdu/httpdns/NetworkManager;->c:Landroid/content/Context;

    .line 35
    iput-object v0, p0, Lcom/spdu/httpdns/NetworkManager;->d:Landroid/content/BroadcastReceiver;

    .line 36
    sget-object v0, Lcom/spdu/httpdns/NetworkType;->HTTPDNS_CONNECTNOTYPE:Lcom/spdu/httpdns/NetworkType;

    iput-object v0, p0, Lcom/spdu/httpdns/NetworkManager;->e:Lcom/spdu/httpdns/NetworkType;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/spdu/httpdns/NetworkManager;-><init>()V

    return-void
.end method

.method public static a()Lcom/spdu/httpdns/NetworkManager;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/spdu/httpdns/j;->a:Lcom/spdu/httpdns/NetworkManager;

    return-object v0
.end method

.method static synthetic a(Lcom/spdu/httpdns/NetworkManager;)Lcom/spdu/httpdns/NetworkType;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/spdu/httpdns/NetworkManager;->e:Lcom/spdu/httpdns/NetworkType;

    return-object v0
.end method

.method static synthetic a(Lcom/spdu/httpdns/NetworkManager;Lcom/spdu/httpdns/NetworkType;)Lcom/spdu/httpdns/NetworkType;
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcom/spdu/httpdns/NetworkManager;->e:Lcom/spdu/httpdns/NetworkType;

    return-object p1
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 41
    monitor-enter p0

    if-nez p1, :cond_1

    .line 97
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 44
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/spdu/httpdns/NetworkManager;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 48
    iput-object p1, p0, Lcom/spdu/httpdns/NetworkManager;->c:Landroid/content/Context;

    .line 49
    invoke-virtual {p0}, Lcom/spdu/httpdns/NetworkManager;->b()Lcom/spdu/httpdns/NetworkType;

    move-result-object v0

    iput-object v0, p0, Lcom/spdu/httpdns/NetworkManager;->e:Lcom/spdu/httpdns/NetworkType;

    .line 50
    new-instance v0, Lcom/spdu/httpdns/i;

    invoke-direct {v0, p0}, Lcom/spdu/httpdns/i;-><init>(Lcom/spdu/httpdns/NetworkManager;)V

    iput-object v0, p0, Lcom/spdu/httpdns/NetworkManager;->d:Landroid/content/BroadcastReceiver;

    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/spdu/httpdns/NetworkManager;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Lcom/spdu/httpdns/NetworkType;
    .locals 4

    .prologue
    .line 116
    sget-object v1, Lcom/spdu/httpdns/NetworkType;->HTTPDNS_NOTCONNECT:Lcom/spdu/httpdns/NetworkType;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "context getNetWorkType :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/spdu/httpdns/NetworkManager;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spdu/httpdns/HttpDnsLog;->b(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/spdu/httpdns/NetworkManager;->c:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 120
    iget-object v0, p0, Lcom/spdu/httpdns/NetworkManager;->c:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 121
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 123
    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-object v1

    .line 127
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 128
    if-nez v2, :cond_1

    .line 129
    sget-object v0, Lcom/spdu/httpdns/NetworkType;->HTTPDNS_MOBILE:Lcom/spdu/httpdns/NetworkType;

    :goto_1
    move-object v1, v0

    .line 139
    goto :goto_0

    .line 131
    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 132
    sget-object v0, Lcom/spdu/httpdns/NetworkType;->HTTPDNS_WIFI:Lcom/spdu/httpdns/NetworkType;

    goto :goto_1

    .line 134
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    sget-object v0, Lcom/spdu/httpdns/NetworkType;->HTTPDNS_CONNECTNOTYPE:Lcom/spdu/httpdns/NetworkType;

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method final c()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 143
    .line 145
    iget-object v0, p0, Lcom/spdu/httpdns/NetworkManager;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/spdu/httpdns/NetworkManager;->c:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 149
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 154
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 159
    :goto_0
    const-string/jumbo v2, "net=%d&info=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 160
    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
