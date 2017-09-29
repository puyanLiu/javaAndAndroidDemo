.class final Lcom/googlecode/androidannotations/api/UiThreadExecutor$Token;
.super Ljava/lang/Object;


# instance fields
.field final id:Ljava/lang/String;

.field runnablesCount:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/googlecode/androidannotations/api/UiThreadExecutor$Token;->runnablesCount:I

    iput-object p1, p0, Lcom/googlecode/androidannotations/api/UiThreadExecutor$Token;->id:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/googlecode/androidannotations/api/UiThreadExecutor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/googlecode/androidannotations/api/UiThreadExecutor$Token;-><init>(Ljava/lang/String;)V

    return-void
.end method
