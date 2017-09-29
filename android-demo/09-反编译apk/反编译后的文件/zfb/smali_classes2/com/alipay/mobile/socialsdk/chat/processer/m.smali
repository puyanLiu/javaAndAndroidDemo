.class final Lcom/alipay/mobile/socialsdk/chat/processer/m;
.super Ljava/lang/Object;
.source "UploadDeliver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver$OnResourceUploadListener;

.field private final synthetic d:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver$OnResourceUploadListener;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/m;->a:Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/m;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/m;->c:Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver$OnResourceUploadListener;

    iput p4, p0, Lcom/alipay/mobile/socialsdk/chat/processer/m;->d:I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/m;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/m;->c:Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver$OnResourceUploadListener;

    invoke-interface {v1}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver$OnResourceUploadListener;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/m;->c:Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver$OnResourceUploadListener;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/m;->b:Ljava/lang/String;

    iget v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/m;->d:I

    if-ne v0, v3, :cond_1

    const/16 v0, 0x63

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver$OnResourceUploadListener;->onUploadProcessChange(Ljava/lang/String;I)V

    .line 82
    :goto_1
    iget v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/m;->d:I

    if-ne v0, v3, :cond_0

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/m;->a:Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->b(Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/m;->a:Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->a(Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_0
    return-void

    .line 77
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/m;->d:I

    goto :goto_0

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/m;->a:Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->a(Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
