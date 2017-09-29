.class Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$1;
.super Ljava/lang/Object;
.source "EmoiLoadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;

.field private final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$1;->this$1:Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$1;->val$result:Ljava/lang/Object;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$1;->this$1:Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$1;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;->onPostExecute(Ljava/lang/Object;)V

    .line 89
    return-void
.end method
