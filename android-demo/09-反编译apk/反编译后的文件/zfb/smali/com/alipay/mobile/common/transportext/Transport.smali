.class public Lcom/alipay/mobile/common/transportext/Transport;
.super Ljava/lang/Object;
.source "Transport.java"


# static fields
.field private static singleton:Lcom/alipay/mobile/common/transportext/Transport;


# instance fields
.field private alarm:Lcom/alipay/mobile/common/transportext/Transport$Alarm;

.field private handler:Lcom/alipay/mobile/common/transportext/Transport$Messenger;

.field private notepad:Lcom/alipay/mobile/common/transportext/amnet/Notepad;

.field private nothing:Lcom/alipay/mobile/common/transportext/Transport$Result;

.field private table:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alipay/mobile/common/transportext/amnet/Amnet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 562
    const-string/jumbo v0, "mnet"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 563
    const-string/jumbo v0, "amnet-mng"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 564
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport;->table:Ljava/util/Map;

    .line 533
    new-instance v0, Lcom/alipay/mobile/common/transportext/Transport$DftResult;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transportext/Transport$DftResult;-><init>(Lcom/alipay/mobile/common/transportext/Transport$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport;->nothing:Lcom/alipay/mobile/common/transportext/Transport$Result;

    .line 534
    new-instance v0, Lcom/alipay/mobile/common/transportext/Transport$DftNotepad;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/common/transportext/Transport$DftNotepad;-><init>(Lcom/alipay/mobile/common/transportext/Transport;Lcom/alipay/mobile/common/transportext/Transport$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport;->notepad:Lcom/alipay/mobile/common/transportext/amnet/Notepad;

    .line 535
    new-instance v0, Lcom/alipay/mobile/common/transportext/Transport$Messenger;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/common/transportext/Transport$Messenger;-><init>(Lcom/alipay/mobile/common/transportext/Transport;Lcom/alipay/mobile/common/transportext/Transport$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport;->handler:Lcom/alipay/mobile/common/transportext/Transport$Messenger;

    .line 536
    new-instance v0, Lcom/alipay/mobile/common/transportext/Transport$DftAlarm;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/common/transportext/Transport$DftAlarm;-><init>(Lcom/alipay/mobile/common/transportext/Transport;Lcom/alipay/mobile/common/transportext/Transport$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport;->alarm:Lcom/alipay/mobile/common/transportext/Transport$Alarm;

    .line 537
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transportext/Transport;)Lcom/alipay/mobile/common/transportext/amnet/Notepad;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport;->notepad:Lcom/alipay/mobile/common/transportext/amnet/Notepad;

    return-object v0
.end method

.method static synthetic access$002(Lcom/alipay/mobile/common/transportext/Transport;Lcom/alipay/mobile/common/transportext/amnet/Notepad;)Lcom/alipay/mobile/common/transportext/amnet/Notepad;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/Transport;->notepad:Lcom/alipay/mobile/common/transportext/amnet/Notepad;

    return-object p1
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transportext/Transport;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transportext/Transport;->record(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/transportext/Transport;)Lcom/alipay/mobile/common/transportext/Transport$Result;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport;->nothing:Lcom/alipay/mobile/common/transportext/Transport$Result;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/transportext/Transport;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport;->table:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/common/transportext/Transport;)Lcom/alipay/mobile/common/transportext/Transport$Messenger;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport;->handler:Lcom/alipay/mobile/common/transportext/Transport$Messenger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/common/transportext/Transport;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/Transport;->remind()V

    return-void
.end method

.method static synthetic access$600()Lcom/alipay/mobile/common/transportext/Transport;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/alipay/mobile/common/transportext/Transport;->singleton:Lcom/alipay/mobile/common/transportext/Transport;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/common/transportext/Transport;)Lcom/alipay/mobile/common/transportext/Transport$Alarm;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport;->alarm:Lcom/alipay/mobile/common/transportext/Transport$Alarm;

    return-object v0
.end method

.method private native connect()V
.end method

.method public static final instance()Lcom/alipay/mobile/common/transportext/Transport;
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/alipay/mobile/common/transportext/Transport;->singleton:Lcom/alipay/mobile/common/transportext/Transport;

    if-nez v0, :cond_0

    .line 155
    invoke-static {}, Lcom/alipay/mobile/common/transportext/Transport;->make()V

    .line 158
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/transportext/Transport;->singleton:Lcom/alipay/mobile/common/transportext/Transport;

    return-object v0
.end method

.method private static declared-synchronized make()V
    .locals 2

    .prologue
    .line 547
    const-class v1, Lcom/alipay/mobile/common/transportext/Transport;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/transportext/Transport;->singleton:Lcom/alipay/mobile/common/transportext/Transport;

    if-nez v0, :cond_0

    .line 548
    new-instance v0, Lcom/alipay/mobile/common/transportext/Transport;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/Transport;-><init>()V

    .line 549
    sput-object v0, Lcom/alipay/mobile/common/transportext/Transport;->singleton:Lcom/alipay/mobile/common/transportext/Transport;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/Transport;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    :cond_0
    monitor-exit v1

    return-void

    .line 547
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private native record(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native remind()V
.end method


# virtual methods
.method public activate(Lcom/alipay/mobile/common/transportext/Transport$Activating;Lcom/alipay/mobile/common/transportext/Transport$Result;)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport;->handler:Lcom/alipay/mobile/common/transportext/Transport$Messenger;

    new-instance v1, Lcom/alipay/mobile/common/transportext/Transport$Starter;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/Transport$Starter;-><init>(Lcom/alipay/mobile/common/transportext/Transport;Lcom/alipay/mobile/common/transportext/Transport$Activating;Lcom/alipay/mobile/common/transportext/Transport$Result;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/Transport$Messenger;->post(Ljava/lang/Runnable;)V

    .line 120
    return-void
.end method

.method public alert(Lcom/alipay/mobile/common/transportext/Transport$Alerting;Lcom/alipay/mobile/common/transportext/Transport$Result;)V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport;->handler:Lcom/alipay/mobile/common/transportext/Transport$Messenger;

    new-instance v1, Lcom/alipay/mobile/common/transportext/Transport$Alerter;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/Transport$Alerter;-><init>(Lcom/alipay/mobile/common/transportext/Transport;Lcom/alipay/mobile/common/transportext/Transport$Alerting;Lcom/alipay/mobile/common/transportext/Transport$Result;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/Transport$Messenger;->post(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method public alter(Lcom/alipay/mobile/common/transportext/Transport$Altering;Lcom/alipay/mobile/common/transportext/Transport$Result;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport;->handler:Lcom/alipay/mobile/common/transportext/Transport$Messenger;

    new-instance v1, Lcom/alipay/mobile/common/transportext/Transport$Alterer;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/Transport$Alterer;-><init>(Lcom/alipay/mobile/common/transportext/Transport;Lcom/alipay/mobile/common/transportext/Transport$Altering;Lcom/alipay/mobile/common/transportext/Transport$Result;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/Transport$Messenger;->post(Ljava/lang/Runnable;)V

    .line 130
    return-void
.end method

.method public ask(Lcom/alipay/mobile/common/transportext/Transport$Asking;Lcom/alipay/mobile/common/transportext/Transport$Result;)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport;->handler:Lcom/alipay/mobile/common/transportext/Transport$Messenger;

    new-instance v1, Lcom/alipay/mobile/common/transportext/Transport$Asker;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/Transport$Asker;-><init>(Lcom/alipay/mobile/common/transportext/Transport;Lcom/alipay/mobile/common/transportext/Transport$Asking;Lcom/alipay/mobile/common/transportext/Transport$Result;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/Transport$Messenger;->post(Ljava/lang/Runnable;)V

    .line 145
    return-void
.end method

.method public detect(Lcom/alipay/mobile/common/transportext/Transport$Detecting;Lcom/alipay/mobile/common/transportext/Transport$Result;)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport;->handler:Lcom/alipay/mobile/common/transportext/Transport$Messenger;

    new-instance v1, Lcom/alipay/mobile/common/transportext/Transport$Detecter;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/Transport$Detecter;-><init>(Lcom/alipay/mobile/common/transportext/Transport;Lcom/alipay/mobile/common/transportext/Transport$Detecting;Lcom/alipay/mobile/common/transportext/Transport$Result;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/Transport$Messenger;->post(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method public explore(Lcom/alipay/mobile/common/transportext/Transport$Exploring;Lcom/alipay/mobile/common/transportext/Transport$Result;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport;->handler:Lcom/alipay/mobile/common/transportext/Transport$Messenger;

    new-instance v1, Lcom/alipay/mobile/common/transportext/Transport$Explorer;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/Transport$Explorer;-><init>(Lcom/alipay/mobile/common/transportext/Transport;Lcom/alipay/mobile/common/transportext/Transport$Exploring;Lcom/alipay/mobile/common/transportext/Transport$Result;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/Transport$Messenger;->post(Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method

.method public inactivate(JLcom/alipay/mobile/common/transportext/Transport$Result;)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport;->handler:Lcom/alipay/mobile/common/transportext/Transport$Messenger;

    new-instance v1, Lcom/alipay/mobile/common/transportext/Transport$Stopper;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/mobile/common/transportext/Transport$Stopper;-><init>(Lcom/alipay/mobile/common/transportext/Transport;JLcom/alipay/mobile/common/transportext/Transport$Result;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/Transport$Messenger;->post(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method

.method public post(Lcom/alipay/mobile/common/transportext/Transport$Posting;Lcom/alipay/mobile/common/transportext/Transport$Result;)V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport;->handler:Lcom/alipay/mobile/common/transportext/Transport$Messenger;

    new-instance v1, Lcom/alipay/mobile/common/transportext/Transport$Poster;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/Transport$Poster;-><init>(Lcom/alipay/mobile/common/transportext/Transport;Lcom/alipay/mobile/common/transportext/Transport$Posting;Lcom/alipay/mobile/common/transportext/Transport$Result;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/Transport$Messenger;->post(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method public register(Lcom/alipay/mobile/common/transportext/Transport$Alarm;)V
    .locals 2

    .prologue
    .line 100
    if-eqz p1, :cond_0

    .line 101
    sget-object v1, Lcom/alipay/mobile/common/transportext/Transport;->singleton:Lcom/alipay/mobile/common/transportext/Transport;

    monitor-enter v1

    .line 102
    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/Transport;->alarm:Lcom/alipay/mobile/common/transportext/Transport$Alarm;

    .line 103
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_0
    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public register(Lcom/alipay/mobile/common/transportext/amnet/Notepad;Lcom/alipay/mobile/common/transportext/Transport$Result;)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport;->handler:Lcom/alipay/mobile/common/transportext/Transport$Messenger;

    new-instance v1, Lcom/alipay/mobile/common/transportext/Transport$Logger;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/Transport$Logger;-><init>(Lcom/alipay/mobile/common/transportext/Transport;Lcom/alipay/mobile/common/transportext/amnet/Notepad;Lcom/alipay/mobile/common/transportext/Transport$Result;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/Transport$Messenger;->post(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method

.method protected final routine()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport;->handler:Lcom/alipay/mobile/common/transportext/Transport$Messenger;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/Transport$Messenger;->drive()V

    .line 165
    return-void
.end method

.method protected final track(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 170
    const-string/jumbo v0, "VERBOSE"

    .line 171
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 172
    const-string/jumbo v0, "DEBUG"

    .line 183
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/Transport;->notepad:Lcom/alipay/mobile/common/transportext/amnet/Notepad;

    invoke-interface {v1, v0, p2, p3}, Lcom/alipay/mobile/common/transportext/amnet/Notepad;->print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void

    .line 173
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 174
    const-string/jumbo v0, "INFO"

    goto :goto_0

    .line 175
    :cond_2
    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    .line 176
    const-string/jumbo v0, "WARN"

    goto :goto_0

    .line 177
    :cond_3
    const/4 v1, 0x6

    if-ne p1, v1, :cond_4

    .line 178
    const-string/jumbo v0, "ERROR"

    goto :goto_0

    .line 179
    :cond_4
    const/4 v1, 0x7

    if-ne p1, v1, :cond_0

    .line 180
    const-string/jumbo v0, "FATAL"

    goto :goto_0
.end method
