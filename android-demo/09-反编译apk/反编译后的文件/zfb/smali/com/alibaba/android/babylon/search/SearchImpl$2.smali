.class Lcom/alibaba/android/babylon/search/SearchImpl$2;
.super Ljava/lang/Object;
.source "SearchImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/babylon/search/SearchImpl;

.field private final synthetic val$dbName:Ljava/lang/String;

.field private final synthetic val$indexName:Ljava/lang/String;

.field private final synthetic val$pkeys:Ljava/util/List;

.field private final synthetic val$tableName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/android/babylon/search/SearchImpl;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/android/babylon/search/SearchImpl$2;->this$0:Lcom/alibaba/android/babylon/search/SearchImpl;

    iput-object p2, p0, Lcom/alibaba/android/babylon/search/SearchImpl$2;->val$pkeys:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/android/babylon/search/SearchImpl$2;->val$indexName:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/android/babylon/search/SearchImpl$2;->val$dbName:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/android/babylon/search/SearchImpl$2;->val$tableName:Ljava/lang/String;

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 590
    iget-object v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl$2;->val$pkeys:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 591
    iget-object v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl$2;->val$pkeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 597
    :goto_1
    invoke-static {}, Lcom/alibaba/android/babylon/search/SearchImpl;->access$7()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl$2;->this$0:Lcom/alibaba/android/babylon/search/SearchImpl;

    const-string/jumbo v1, "chat"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/babylon/search/SearchImpl;->access$8(Lcom/alibaba/android/babylon/search/SearchImpl;Ljava/lang/String;Z)V

    .line 601
    :cond_0
    return-void

    .line 591
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 592
    iget-object v2, p0, Lcom/alibaba/android/babylon/search/SearchImpl$2;->this$0:Lcom/alibaba/android/babylon/search/SearchImpl;

    iget-object v3, p0, Lcom/alibaba/android/babylon/search/SearchImpl$2;->val$indexName:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/babylon/search/SearchImpl$2;->val$dbName:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/babylon/search/SearchImpl$2;->val$tableName:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v0}, Lcom/alibaba/android/babylon/search/SearchImpl;->access$6(Lcom/alibaba/android/babylon/search/SearchImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 595
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl$2;->this$0:Lcom/alibaba/android/babylon/search/SearchImpl;

    iget-object v1, p0, Lcom/alibaba/android/babylon/search/SearchImpl$2;->val$indexName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/babylon/search/SearchImpl$2;->val$dbName:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/babylon/search/SearchImpl$2;->val$tableName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/android/babylon/search/SearchImpl;->access$6(Lcom/alibaba/android/babylon/search/SearchImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
