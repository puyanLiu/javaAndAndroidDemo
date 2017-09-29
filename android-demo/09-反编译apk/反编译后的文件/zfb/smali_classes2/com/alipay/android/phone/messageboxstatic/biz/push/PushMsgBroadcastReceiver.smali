.class public Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushMsgBroadcastReceiver.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final synthetic e:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private final b:Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;

.field private final c:Lcom/alipay/mbxsgsg/b/a;

.field private final d:Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "PushMsgBroadcastReceiver.java"

    const-class v2, Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.android.phone.messageboxstatic.biz.push.PushMsgBroadcastReceiver"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "context:intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;->e:Lorg/aspectj/lang/JoinPoint$StaticPart;

    .line 36
    const-class v0, Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;->a:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 38
    new-instance v0, Lcom/alipay/android/phone/messageboxstatic/biz/friends/FriendstabAccessServiceImpl;

    invoke-direct {v0}, Lcom/alipay/android/phone/messageboxstatic/biz/friends/FriendstabAccessServiceImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;->b:Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;

    .line 39
    new-instance v0, Lcom/alipay/mbxsgsg/b/b;

    invoke-direct {v0}, Lcom/alipay/mbxsgsg/b/b;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;->c:Lcom/alipay/mbxsgsg/b/a;

    .line 48
    new-instance v0, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;

    invoke-direct {v0}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;->d:Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;

    .line 34
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;->d:Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;->readByMsgId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "count = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;->b:Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;->updateFriendsExternal()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/alipay/android/phone/messageboxstatic/biz/db/ReadMessageInfo;

    invoke-direct {v0}, Lcom/alipay/android/phone/messageboxstatic/biz/db/ReadMessageInfo;-><init>()V

    iput-object p2, v0, Lcom/alipay/android/phone/messageboxstatic/biz/db/ReadMessageInfo;->userId:Ljava/lang/String;

    iput-object p1, v0, Lcom/alipay/android/phone/messageboxstatic/biz/db/ReadMessageInfo;->msgId:Ljava/lang/String;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/android/phone/messageboxstatic/biz/db/ReadMessageInfo;->gmtCreate:J

    iget-wide v1, v0, Lcom/alipay/android/phone/messageboxstatic/biz/db/ReadMessageInfo;->gmtCreate:J

    const-wide/32 v3, 0x76a700

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/alipay/android/phone/messageboxstatic/biz/db/ReadMessageInfo;->gmtValid:J

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;->d:Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;

    invoke-interface {v1, v0}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;->insertReadMsg(Lcom/alipay/android/phone/messageboxstatic/biz/db/ReadMessageInfo;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .prologue
    .line 1
    sget-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;->e:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    sget-object v7, Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;->a:Ljava/lang/String;

    const-string/jumbo v8, "\u89e3\u6790intent\u7684action\uff0caction = com.alipay.mobile.push.CMD_CLICKED_20000236"

    invoke-interface {v6, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "com.alipay.mobile.push.CMD_CLICKED_20000236"

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    sget-object v7, Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;->a:Ljava/lang/String;

    const-string/jumbo v8, "action = com.alipay.mobile.push.CMD_CLICKED_20000236"

    invoke-interface {v6, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/alipay/android/phone/messageboxstatic/biz/push/a;

    invoke-direct {v7, p0, p2}, Lcom/alipay/android/phone/messageboxstatic/biz/push/a;-><init>(Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;Landroid/content/Intent;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    :cond_0
    const-string/jumbo v6, "com.eg.android.AlipayGphone.action.CDP_CLICK_NOTIFY_VIEW_ACTION"

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    sget-object v6, Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;->a:Ljava/lang/String;

    const-string/jumbo v7, "action = com.eg.android.AlipayGphone.action.CDP_CLICK_NOTIFY_VIEW_ACTION"

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/alipay/android/phone/messageboxstatic/biz/push/b;

    invoke-direct {v6, p0, p2}, Lcom/alipay/android/phone/messageboxstatic/biz/push/b;-><init>(Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;Landroid/content/Intent;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string/jumbo v7, "Monitor"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "onReceive at: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v8, ", Intent: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v8, 0x1

    aget-object v2, v2, v8

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", cost:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v2, v5, v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ms."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v7, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
