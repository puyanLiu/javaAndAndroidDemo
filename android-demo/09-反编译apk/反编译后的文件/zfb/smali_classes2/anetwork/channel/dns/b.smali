.class final Lanetwork/channel/dns/b;
.super Landroid/os/AsyncTask;
.source "DNSReceiver.java"


# instance fields
.field final synthetic a:Lanetwork/channel/dns/DNSReceiver;

.field private b:Landroid/content/Context;

.field private c:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lanetwork/channel/dns/DNSReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lanetwork/channel/dns/b;->a:Lanetwork/channel/dns/DNSReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 99
    iput-object p2, p0, Lanetwork/channel/dns/b;->b:Landroid/content/Context;

    .line 100
    iput-object p3, p0, Lanetwork/channel/dns/b;->c:Landroid/content/Intent;

    .line 101
    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lanetwork/channel/dns/b;->a:Lanetwork/channel/dns/DNSReceiver;

    iget-object v1, p0, Lanetwork/channel/dns/b;->b:Landroid/content/Context;

    iget-object v1, p0, Lanetwork/channel/dns/b;->c:Landroid/content/Intent;

    invoke-static {v0, v1}, Lanetwork/channel/dns/DNSReceiver;->a(Lanetwork/channel/dns/DNSReceiver;Landroid/content/Intent;)V

    .line 105
    const/4 v0, 0x0

    return-object v0
.end method
