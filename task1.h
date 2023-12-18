#pragma once

#include "task1.g.h"

namespace winrt::masam::implementation
{
    struct task1 : task1T<task1>
    {
        task1() 
        {
            // Xaml objects should not call InitializeComponent during construction.
            // See https://github.com/microsoft/cppwinrt/tree/master/nuget#initializecomponent
        }

        int32_t MyProperty();
        void MyProperty(int32_t value);

        void ClickHandler(Windows::Foundation::IInspectable const& sender, Windows::UI::Xaml::RoutedEventArgs const& args);
    };
}

namespace winrt::masam::factory_implementation
{
    struct task1 : task1T<task1, implementation::task1>
    {
    };
}
