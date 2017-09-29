.class final Lcom/alipay/mobile/socialsdk/chat/processer/d;
.super Ljava/lang/Object;
.source "BigVideoSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/chat/processer/c;

.field private final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/chat/processer/c;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/d;->a:Lcom/alipay/mobile/socialsdk/chat/processer/c;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/d;->b:Ljava/lang/Runnable;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/d;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/d;->a:Lcom/alipay/mobile/socialsdk/chat/processer/c;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/c;->a()V

    .line 150
    return-void

    .line 147
    :catchall_0
    move-exception v0

    .line 148
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/d;->a:Lcom/alipay/mobile/socialsdk/chat/processer/c;

    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/chat/processer/c;->a()V

    .line 149
    throw v0
.end method
