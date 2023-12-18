#include "pch.h"
#include "task1.h"
#if __has_include("task1.g.cpp")
#include "task1.g.cpp"
#endif

using namespace winrt;
using namespace Windows::UI::Xaml;

namespace winrt::masam::implementation
{
    int32_t task1::MyProperty()
    {
        throw hresult_not_implemented();
    }

    void task1::MyProperty(int32_t /* value */)
    {
        throw hresult_not_implemented();
    }

    void task1::ClickHandler(IInspectable const&, RoutedEventArgs const&)
    {
        Button().Content(box_value(L"Clicked"));
    }
}
