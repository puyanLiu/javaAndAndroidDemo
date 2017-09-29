.class Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;
.super Ljava/lang/Object;
.source "SearchResultListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

.field private final synthetic val$display:Z

.field private final synthetic val$itemList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;ZLjava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    iput-boolean p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;->val$display:Z

    iput-object p3, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;->val$itemList:Ljava/util/List;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;)Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 74
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "o2ohome.SearchAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "preGenerateView(), display:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;->val$display:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;->val$itemList:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->preGenerateView(Ljava/util/List;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewTreeObserver$OnPreDrawListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1$1;

    iget-boolean v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;->val$display:Z

    invoke-direct {v1, p0, v2}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 92
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "o2ohome.SearchAdapter"

    const-string/jumbo v3, "preGenerateView Exception"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
