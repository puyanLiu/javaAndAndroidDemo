.class Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1$1;
.super Ljava/lang/Object;
.source "SearchResultListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;

.field private final synthetic val$display:Z


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;

    iput-boolean p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1$1;->val$display:Z

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;)Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 86
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "o2ohome.SearchAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "preGenerateView() finished. display: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1$1;->val$display:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;)Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->access$2(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pullRefreshFinished()V

    .line 88
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;)Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->access$2(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1$1;->val$display:Z

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->updateHeaderAndFooter(Z)V

    .line 89
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;)Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->notifyDataSetChanged()V

    .line 90
    return-void
.end method
