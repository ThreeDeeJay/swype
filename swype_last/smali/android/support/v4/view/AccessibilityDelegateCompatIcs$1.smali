.class final Landroid/support/v4/view/AccessibilityDelegateCompatIcs$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "AccessibilityDelegateCompatIcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/AccessibilityDelegateCompatIcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bridge:Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;


# direct methods
.method constructor <init>(Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 55
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 59
    iget-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 65
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5
    .param p1, "host"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 70
    iget-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .registers 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "eventType"    # I

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 76
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 81
    return-void
.end method
